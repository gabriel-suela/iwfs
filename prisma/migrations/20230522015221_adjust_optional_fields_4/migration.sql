/*
  Warnings:

  - You are about to drop the `turma` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "studant" DROP CONSTRAINT "studant_turmaId_fkey";

-- DropForeignKey
ALTER TABLE "studant_hobby" DROP CONSTRAINT "studant_hobby_hobbyId_fkey";

-- DropForeignKey
ALTER TABLE "studant_hobby" DROP CONSTRAINT "studant_hobby_studantId_fkey";

-- DropForeignKey
ALTER TABLE "teacher" DROP CONSTRAINT "teacher_turmaId_fkey";

-- DropForeignKey
ALTER TABLE "teacher_skills" DROP CONSTRAINT "teacher_skills_skillId_fkey";

-- DropForeignKey
ALTER TABLE "teacher_skills" DROP CONSTRAINT "teacher_skills_teacherId_fkey";

-- AlterTable
ALTER TABLE "studant_hobby" ALTER COLUMN "studantId" DROP NOT NULL,
ALTER COLUMN "hobbyId" DROP NOT NULL;

-- AlterTable
ALTER TABLE "teacher_skills" ALTER COLUMN "teacherId" DROP NOT NULL,
ALTER COLUMN "skillId" DROP NOT NULL;

-- DropTable
DROP TABLE "turma";

-- CreateTable
CREATE TABLE "room" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "module" TEXT NOT NULL DEFAULT '0',

    CONSTRAINT "room_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "studant" ADD CONSTRAINT "studant_turmaId_fkey" FOREIGN KEY ("turmaId") REFERENCES "room"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "studant_hobby" ADD CONSTRAINT "studant_hobby_studantId_fkey" FOREIGN KEY ("studantId") REFERENCES "studant"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "studant_hobby" ADD CONSTRAINT "studant_hobby_hobbyId_fkey" FOREIGN KEY ("hobbyId") REFERENCES "hobby"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "teacher" ADD CONSTRAINT "teacher_turmaId_fkey" FOREIGN KEY ("turmaId") REFERENCES "room"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "teacher_skills" ADD CONSTRAINT "teacher_skills_teacherId_fkey" FOREIGN KEY ("teacherId") REFERENCES "teacher"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "teacher_skills" ADD CONSTRAINT "teacher_skills_skillId_fkey" FOREIGN KEY ("skillId") REFERENCES "skill"("id") ON DELETE SET NULL ON UPDATE CASCADE;
