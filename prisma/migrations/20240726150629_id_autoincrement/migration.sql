/*
  Warnings:

  - The primary key for the `CSSQuestions` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `CSSQuestions` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `HTMLQuestions` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `HTMLQuestions` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `JSQuestions` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `JSQuestions` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `JavaQuestions` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `JavaQuestions` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `PythonQuestions` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `PythonQuestions` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `User` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `User` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "CSSQuestions" DROP CONSTRAINT "CSSQuestions_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "CSSQuestions_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "HTMLQuestions" DROP CONSTRAINT "HTMLQuestions_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "HTMLQuestions_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "JSQuestions" DROP CONSTRAINT "JSQuestions_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "JSQuestions_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "JavaQuestions" DROP CONSTRAINT "JavaQuestions_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "JavaQuestions_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "PythonQuestions" DROP CONSTRAINT "PythonQuestions_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "PythonQuestions_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "User" DROP CONSTRAINT "User_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "User_pkey" PRIMARY KEY ("id");
