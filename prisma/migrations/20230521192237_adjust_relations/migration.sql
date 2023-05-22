/*
  Warnings:

  - You are about to drop the column `studantId` on the `turma` table. All the data in the column will be lost.
  - Added the required column `turmaId` to the `studant` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "turma" DROP CONSTRAINT "turma_studantId_fkey";

-- AlterTable
ALTER TABLE "studant" ADD COLUMN     "turmaId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "turma" DROP COLUMN "studantId";

-- AddForeignKey
ALTER TABLE "studant" ADD CONSTRAINT "studant_turmaId_fkey" FOREIGN KEY ("turmaId") REFERENCES "turma"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
