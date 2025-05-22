import { DataSource } from "typeorm";
import { User } from "./auth/user.entity";

export const AppDataSource = new DataSource({
    type: "mysql",
    host: "localhost",
    port: 3306,
    username: "root",
    password: "123456",
    database: "auth_db",
    entities: [__dirname + "/**/*.entity{.ts,.js}"], // Padrão para encontrar todas as entidades
    migrations: [__dirname + "/migration/*{.ts,.js}"], // Padrão para migrações
    synchronize: false, // Importante manter como false quando usando migrações
    logging: true, // Habilitar para ver queries no console (pode desativar em produção)
    migrationsRun: true, // Executa migrações automaticamente ao iniciar
});
