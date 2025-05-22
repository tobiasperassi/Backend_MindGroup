import { Entity, PrimaryGeneratedColumn, Column, ManyToOne, JoinColumn } from 'typeorm';
import { User } from '../../auth/user.entity';

@Entity('artigos')
export class Artigo {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 255 })
  titulo: string;

  @Column('text')
  conteudo: string;

  @Column({ nullable: true })
  imagem: string; 

  @ManyToOne(() => User, (user) => user.artigos)
  @JoinColumn({ name: 'autor_id' })
  autor: User;

  @Column({ type: 'timestamp', default: () => 'CURRENT_TIMESTAMP' })
  data_criacao: Date;

  @Column({ type: 'timestamp', default: () => 'CURRENT_TIMESTAMP', onUpdate: 'CURRENT_TIMESTAMP' })
  data_atualizacao: Date;
}