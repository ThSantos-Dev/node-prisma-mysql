/*
  Warnings:

  - Added the required column `idEstado` to the `tblcidade` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `tblcidade` ADD COLUMN `idEstado` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `tblcidade` ADD CONSTRAINT `tblcidade_idEstado_fkey` FOREIGN KEY (`idEstado`) REFERENCES `tblestado`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
