/*
  Warnings:

  - Added the required column `idCidade` to the `tblusuario` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `tblusuario` ADD COLUMN `idCidade` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `tblusuario` ADD CONSTRAINT `tblusuario_idCidade_fkey` FOREIGN KEY (`idCidade`) REFERENCES `tblcidade`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
