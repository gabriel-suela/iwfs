-- CreateTable
CREATE TABLE "studant" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "brith_date" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "studant_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "studant_hobby" (
    "id" SERIAL NOT NULL,
    "studantId" INTEGER NOT NULL,
    "hobbyId" INTEGER NOT NULL,

    CONSTRAINT "studant_hobby_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "hobby" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "hobby_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "turma" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "module" TEXT NOT NULL DEFAULT '0',
    "studantId" INTEGER,

    CONSTRAINT "turma_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "teacher" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "brith_date" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "teacher_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "hobby_name_key" ON "hobby"("name");

-- AddForeignKey
ALTER TABLE "studant_hobby" ADD CONSTRAINT "studant_hobby_studantId_fkey" FOREIGN KEY ("studantId") REFERENCES "studant"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "studant_hobby" ADD CONSTRAINT "studant_hobby_hobbyId_fkey" FOREIGN KEY ("hobbyId") REFERENCES "hobby"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "turma" ADD CONSTRAINT "turma_studantId_fkey" FOREIGN KEY ("studantId") REFERENCES "studant"("id") ON DELETE SET NULL ON UPDATE CASCADE;
