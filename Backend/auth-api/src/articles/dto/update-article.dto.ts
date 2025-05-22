// src/artigos/dto/update-article.dto.ts
import { PartialType } from '@nestjs/mapped-types';
import { CreateArtigoDto } from './create-article.dto';

export class UpdateArtigoDto extends PartialType(CreateArtigoDto) {}
