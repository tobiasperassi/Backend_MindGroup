import { IsString, IsNotEmpty, IsOptional, IsUrl } from 'class-validator';

export class CreateArtigoDto {
  @IsString()
  @IsNotEmpty()
  titulo: string;

  @IsString()
  @IsNotEmpty()
  conteudo: string;

  @IsUrl()
  @IsOptional()
  imagem?: string;

  @IsNotEmpty()
  autor_id: number;
}