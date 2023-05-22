/*
  Warnings:

  - Added the required column `turmaId` to the `teacher` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "teacher" ADD COLUMN     "turmaId" INTEGER NOT NULL;

-- CreateTable
CREATE TABLE "teacher_skills" (
    "id" SERIAL NOT NULL,
    "teacherId" INTEGER NOT NULL,
    "skillId" INTEGER NOT NULL,

    CONSTRAINT "teacher_skills_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "skill" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "skill_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "teacher" ADD CONSTRAINT "teacher_turmaId_fkey" FOREIGN KEY ("turmaId") REFERENCES "turma"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "teacher_skills" ADD CONSTRAINT "teacher_skills_teacherId_fkey" FOREIGN KEY ("teacherId") REFERENCES "teacher"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
