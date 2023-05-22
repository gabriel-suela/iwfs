/*
  Warnings:

  - A unique constraint covering the columns `[email]` on the table `teacher` will be added. If there are existing duplicate values, this will fail.

*/
-- DropForeignKey
ALTER TABLE "teacher" DROP CONSTRAINT "teacher_turmaId_fkey";

-- AlterTable
ALTER TABLE "teacher" ALTER COLUMN "brith_date" DROP NOT NULL,
ALTER COLUMN "turmaId" DROP NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "teacher_email_key" ON "teacher"("email");

-- AddForeignKey
ALTER TABLE "teacher" ADD CONSTRAINT "teacher_turmaId_fkey" FOREIGN KEY ("turmaId") REFERENCES "turma"("id") ON DELETE SET NULL ON UPDATE CASCADE;
