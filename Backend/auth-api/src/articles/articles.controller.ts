import { Controller, Get, Post, Body, Param, UseGuards, NotFoundException, Delete, Put } from '@nestjs/common';
import { ArtigosService } from './article.service';
import { CreateArtigoDto } from './dto/create-article.dto';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';
import { ApiBearerAuth, ApiTags } from '@nestjs/swagger';
import { UpdateArtigoDto } from './dto/update-article.dto';

@ApiTags('artigos')
@Controller('artigos')
export class ArtigosController {
  constructor(private readonly artigosService: ArtigosService) {}

  @Post()
  @UseGuards(JwtAuthGuard)
  @ApiBearerAuth()
  create(@Body() createArtigoDto: CreateArtigoDto) {
    return this.artigosService.create(createArtigoDto);
  }

  @Get()
  findAll() {
    return this.artigosService.findAll();
  }

  @Get(':id')
  async findOne(@Param('id') id: string) {
    const artigo = await this.artigosService.findOne(+id);
    if (!artigo) {
      throw new NotFoundException('Artigo não encontrado');
    }
    return artigo;
  }

  @Delete(':id')
  @UseGuards(JwtAuthGuard)
  @ApiBearerAuth()
  async remove(@Param('id') id: string) {
    await this.artigosService.remove(+id);
    return { message: 'Artigo excluído com sucesso' };
  }

  @Put(':id')
  @UseGuards(JwtAuthGuard)
  @ApiBearerAuth()
  async update(@Param('id') id: string, @Body() updateArtigoDto: UpdateArtigoDto) {
    return this.artigosService.update(+id, updateArtigoDto);
  }

}