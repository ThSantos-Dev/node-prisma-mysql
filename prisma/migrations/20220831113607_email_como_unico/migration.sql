/*
  Warnings:

  - A unique constraint covering the columns `[email]` on the table `tblusuario` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX `tblusuario_email_key` ON `tblusuario`(`email`);
