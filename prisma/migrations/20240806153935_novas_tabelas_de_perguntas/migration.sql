-- CreateTable
CREATE TABLE "ReactQuestions" (
    "id" SERIAL NOT NULL,
    "question" TEXT NOT NULL,
    "option1" TEXT NOT NULL,
    "option2" TEXT NOT NULL,
    "option3" TEXT NOT NULL,
    "correct_answer" TEXT NOT NULL,

    CONSTRAINT "ReactQuestions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "NodeQuestions" (
    "id" SERIAL NOT NULL,
    "question" TEXT NOT NULL,
    "option1" TEXT NOT NULL,
    "option2" TEXT NOT NULL,
    "option3" TEXT NOT NULL,
    "correct_answer" TEXT NOT NULL,

    CONSTRAINT "NodeQuestions_pkey" PRIMARY KEY ("id")
);
