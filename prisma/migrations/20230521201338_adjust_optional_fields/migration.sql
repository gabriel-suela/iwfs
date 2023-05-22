/*
  Warnings:

  - A unique constraint covering the columns `[email]` on the table `studant` will be added. If there are existing duplicate values, this will fail.

*/
-- DropForeignKey
ALTER TABLE "studant" DROP CONSTRAINT "studant_turmaId_fkey";

-- AlterTable
ALTER TABLE "studant" ALTER COLUMN "turmaId" DROP NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "studant_email_key" ON "studant"("email");

-- AddForeignKey
ALTER TABLE "studant" ADD CONSTRAINT "studant_turmaId_fkey" FOREIGN KEY ("turmaId") REFERENCES "turma"("id") ON DELETE SET NULL ON UPDATE CASCADE;
