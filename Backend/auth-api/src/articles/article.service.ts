import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Artigo } from './entities/article.entity';
import { CreateArtigoDto } from './dto/create-article.dto';
import { User } from '../auth/user.entity';
import { UpdateArtigoDto } from './dto/update-article.dto';

@Injectable()
export class ArtigosService {
  constructor(
    @InjectRepository(Artigo)
    private artigosRepository: Repository<Artigo>,
    @InjectRepository(User)
    private usersRepository: Repository<User>,
  ) {}

  async create(createArtigoDto: CreateArtigoDto): Promise<Artigo> {
    const autor = await this.usersRepository.findOneBy({ id: createArtigoDto.autor_id });
    if (!autor) {
      throw new Error('Autor não encontrado');
    }

    const artigo = this.artigosRepository.create({
      ...createArtigoDto,
      autor,
    });

    return this.artigosRepository.save(artigo);
  }

  async findAll(): Promise<Artigo[]> {
    return this.artigosRepository.find({ relations: ['autor'] });
  }

  async findOne(id: number): Promise<Artigo | null> {
    return this.artigosRepository.findOne({
      where: { id },
      relations: ['autor'],
    });
  }

  async remove(id: number): Promise<void> {
    const artigo = await this.artigosRepository.findOneBy({ id });
    if (!artigo) {
      throw new Error('Artigo não encontrado');
    }
    await this.artigosRepository.remove(artigo);
  }

  async update(id: number, updateArtigoDto: UpdateArtigoDto): Promise<Artigo> {
    const artigo = await this.artigosRepository.findOneBy({ id });

    if (!artigo) {
      throw new Error('Artigo não encontrado');
    }

    if (updateArtigoDto.autor_id) {
      const autor = await this.usersRepository.findOneBy({ id: updateArtigoDto.autor_id });
      if (!autor) {
        throw new Error('Autor não encontrado');
      }
      artigo.autor = autor;
    }

    Object.assign(artigo, updateArtigoDto);
    return this.artigosRepository.save(artigo);
  }

}