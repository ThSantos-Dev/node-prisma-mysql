/*
  Warnings:

  - You are about to drop the `tbluser` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `tbluser`;

-- CreateTable
CREATE TABLE `tblusuario` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(70) NOT NULL,
    `senha` VARCHAR(20) NOT NULL,
    `nome` VARCHAR(120) NOT NULL,
    `data_nascimento` DATE NOT NULL,

    UNIQUE INDEX `tblusuario_id_key`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tblgenero` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(15) NOT NULL,
    `sigla` VARCHAR(1) NOT NULL,

    UNIQUE INDEX `tblgenero_id_key`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
