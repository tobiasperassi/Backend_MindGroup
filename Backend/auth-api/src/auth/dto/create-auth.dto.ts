import { IsEmail, IsOptional, IsString, MinLength } from 'class-validator';

export class CreateAuthDto {

  @IsEmail()
  email: string;

  @MinLength(6)
  password: string;

  @IsOptional()
  @IsString()
  nome?: string;

  @IsOptional()
  @IsString()
  sobrenome?: string;
}
