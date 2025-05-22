import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ArtigosService } from './article.service';
import { ArtigosController } from './articles.controller';
import { Artigo } from './entities/article.entity';
import { AuthModule } from '../auth/auth.module';

@Module({
  imports: [TypeOrmModule.forFeature([Artigo]), AuthModule],
  controllers: [ArtigosController],
  providers: [ArtigosService],
  exports: [ArtigosService],
})
export class ArtigosModule {}
