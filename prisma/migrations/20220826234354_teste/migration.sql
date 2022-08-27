/*
  Warnings:

  - A unique constraint covering the columns `[id]` on the table `tbluser` will be added. If there are existing duplicate values, this will fail.
  - Made the column `nome` on table `tbluser` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `tbluser` MODIFY `nome` VARCHAR(120) NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX `tbluser_id_key` ON `tbluser`(`id`);
