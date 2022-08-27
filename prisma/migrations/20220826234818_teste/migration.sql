/*
  Warnings:

  - Added the required column `idade` to the `tbluser` table without a default value. This is not possible if the table is not empty.
  - Added the required column `senha` to the `tbluser` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `tbluser` ADD COLUMN `idade` DATE NOT NULL,
    ADD COLUMN `senha` VARCHAR(20) NOT NULL;
