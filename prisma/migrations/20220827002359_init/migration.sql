/*
  Warnings:

  - Added the required column `biografia` to the `tblusuario` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `tblusuario` ADD COLUMN `biografia` TEXT NOT NULL;
