import { Entity, Column, PrimaryGeneratedColumn, OneToMany } from 'typeorm';
import { Artigo } from '../articles/entities/article.entity';

@Entity()
export class User {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ unique: true })
  email: string;

  @Column()
  password: string;

  @Column({ nullable: true })
  nome: string;

  @Column({ nullable: true })
  sobrenome: string;

  @OneToMany(() => Artigo, (artigo) => artigo.autor)
  artigos: Artigo[];
}