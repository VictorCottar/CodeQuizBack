-- CreateTable
CREATE TABLE "User" (
    "id" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "HTMLQuestions" (
    "id" TEXT NOT NULL,
    "question" TEXT NOT NULL,
    "option1" TEXT NOT NULL,
    "option2" TEXT NOT NULL,
    "option3" TEXT NOT NULL,
    "correct_answer" TEXT NOT NULL,

    CONSTRAINT "HTMLQuestions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CSSQuestions" (
    "id" TEXT NOT NULL,
    "question" TEXT NOT NULL,
    "option1" TEXT NOT NULL,
    "option2" TEXT NOT NULL,
    "option3" TEXT NOT NULL,
    "correct_answer" TEXT NOT NULL,

    CONSTRAINT "CSSQuestions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "JSQuestions" (
    "id" TEXT NOT NULL,
    "question" TEXT NOT NULL,
    "option1" TEXT NOT NULL,
    "option2" TEXT NOT NULL,
    "option3" TEXT NOT NULL,
    "correct_answer" TEXT NOT NULL,

    CONSTRAINT "JSQuestions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "JavaQuestions" (
    "id" TEXT NOT NULL,
    "question" TEXT NOT NULL,
    "option1" TEXT NOT NULL,
    "option2" TEXT NOT NULL,
    "option3" TEXT NOT NULL,
    "correct_answer" TEXT NOT NULL,

    CONSTRAINT "JavaQuestions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PythonQuestions" (
    "id" TEXT NOT NULL,
    "question" TEXT NOT NULL,
    "option1" TEXT NOT NULL,
    "option2" TEXT NOT NULL,
    "option3" TEXT NOT NULL,
    "correct_answer" TEXT NOT NULL,

    CONSTRAINT "PythonQuestions_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");
