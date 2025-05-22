import { MigrationInterface, QueryRunner } from "typeorm";

export class AddNomeESobrenomeToUser1747832325132 implements MigrationInterface {
    name = 'AddNomeESobrenomeToUser1747832325132'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE \`user\` ADD \`nome\` varchar(255) NULL`);
        await queryRunner.query(`ALTER TABLE \`user\` ADD \`sobrenome\` varchar(255) NULL`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE \`user\` DROP COLUMN \`sobrenome\``);
        await queryRunner.query(`ALTER TABLE \`user\` DROP COLUMN \`nome\``);
    }

}
