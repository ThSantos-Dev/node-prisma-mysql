/*
  Warnings:

  - Added the required column `idGenero` to the `tblusuario` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `tblusuario` ADD COLUMN `idGenero` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `tblusuario` ADD CONSTRAINT `tblusuario_idGenero_fkey` FOREIGN KEY (`idGenero`) REFERENCES `tblgenero`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
