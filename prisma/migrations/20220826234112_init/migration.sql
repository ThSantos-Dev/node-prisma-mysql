/*
  Warnings:

  - You are about to alter the column `email` on the `tbluser` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(70)`.

*/
-- DropIndex
DROP INDEX `tbluser_email_key` ON `tbluser`;

-- AlterTable
ALTER TABLE `tbluser` ADD COLUMN `nome` VARCHAR(191) NULL,
    MODIFY `email` VARCHAR(70) NOT NULL;
