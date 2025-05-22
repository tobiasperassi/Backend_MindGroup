import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AppDataSource } from './data-source';
import { AuthModule } from './auth/auth.module';
import { ArtigosModule } from './articles/article.module'; // ✅ Importe aqui
import { User } from './auth/user.entity';

@Module({
  imports: [
    TypeOrmModule.forRootAsync({
      useFactory: () => ({
        ...AppDataSource.options,
        autoLoadEntities: true,
      }),
    }),
    AuthModule,
    ArtigosModule, // ✅ Adicione aqui
    TypeOrmModule.forFeature([User]),
  ],
})
export class AppModule {}
