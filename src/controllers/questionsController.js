import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

const tableMap = {
  Python: 'PythonQuestions',
  HTML: 'HTMLQuestions',
  CSS: 'CSSQuestions',
  JS: 'JSQuestions',
  Java: 'JavaQuestions',
};

export const getQuestionsByTopic = async (req, res) => {
  const { topic } = req.params;
  const tableName = tableMap[topic];

  if (!tableName) {
    return res.status(400).json({ message: 'Tópico inválido' });
  }

  try {
    console.log(`Buscando perguntas para o tópico: ${topic}`);
    const questions = await prisma[tableName].findMany();

    console.log('Perguntas encontradas:', questions);

    if (questions.length === 0) {
      return res.status(404).json({ message: 'Tópico não encontrado' });
    }

    res.status(200).json(questions);
  } catch (error) {
    console.error('Erro ao buscar as perguntas:', error);
    res.status(500).json({ message: 'Erro ao buscar as perguntas' });
  }
};
