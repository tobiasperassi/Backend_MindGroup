import { Injectable, UnauthorizedException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { User } from './user.entity';
import * as bcrypt from 'bcrypt';
import { JwtService } from '@nestjs/jwt';
import { UpdateAuthDto } from './dto/update-auth.dto';

@Injectable()
export class AuthService {
  constructor(
    @InjectRepository(User) private usersRepo: Repository<User>,
    private jwtService: JwtService
  ) {}

  async register(email: string, password: string): Promise<User> {
    const hash = await bcrypt.hash(password, 10);
    const user = this.usersRepo.create({ email, password: hash });
    return this.usersRepo.save(user);
  }

  async login(email: string, password: string): Promise<{ access_token: string }> {
    const user = await this.usersRepo.findOne({ where: { email } });
    if (!user) throw new UnauthorizedException('Usuário não encontrado');

    const isValid = await bcrypt.compare(password, user.password);
    if (!isValid) throw new UnauthorizedException('Senha inválida');

    const payload = { sub: user.id, email: user.email };
    return {
      access_token: this.jwtService.sign(payload),
    };
  }

  async updateUser(id: number, dto: UpdateAuthDto) {
    const user = await this.usersRepo.findOne({ where: { id } });
    if (!user) {
      throw new Error('Usuário não encontrado');
    }

    if (dto.password) {
      const salt = await bcrypt.genSalt();
      dto.password = await bcrypt.hash(dto.password, salt);
    }

    await this.usersRepo.update(id, dto);
    return { message: 'Usuário atualizado com sucesso' };
  }
  
}
