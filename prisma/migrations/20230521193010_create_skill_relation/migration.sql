-- AddForeignKey
ALTER TABLE "teacher_skills" ADD CONSTRAINT "teacher_skills_skillId_fkey" FOREIGN KEY ("skillId") REFERENCES "skill"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
