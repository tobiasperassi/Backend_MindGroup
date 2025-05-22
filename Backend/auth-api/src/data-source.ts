import { DataSource } from "typeorm";
import { User } from "./auth/user.entity";

export const AppDataSource = new DataSource({
    type: "mysql",
    host: "localhost",
    port: 3306,
    username: "root",
    password: "123456",
    database: "auth_db",
    entities: [__dirname + "/**/*.entity{.ts,.js}"], 
    migrations: [__dirname + "/migration/*{.ts,.js}"], 
    synchronize: false, 
    logging: true, 
    migrationsRun: true, 
});
