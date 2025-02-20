import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

const tableMap = {
  Python: 'PythonQuestions',
  HTML: 'HTMLQuestions',
  CSS: 'CSSQuestions',
  Javascript: 'JSQuestions',
  Java: 'JavaQuestions',
  Node: 'NodeQuestions',
  ReactJS: 'ReactQuestions'
};

export const getQuestions = async (topic, limit) => {
    const tableName = tableMap[topic];
    if (!tableName) {
        throw new Error('Tópico inválido');
    }

    try {
        const questions = await prisma.$queryRawUnsafe(`
          SELECT * FROM "${tableName}"
          ORDER BY RANDOM()
          ${limit ? `LIMIT ${parseInt(limit)}` : ''}
        `);

        if (questions.length === 0) {
            throw new Error('Tópico não encontrado');
        }

        return questions;
    } catch (error) {
        throw new Error('Erro ao buscar as perguntas');
    }
};
