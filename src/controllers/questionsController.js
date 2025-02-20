import { getQuestions } from '../services/questionService.js';

export const getQuestionsByTopic = async (req, res) => {
  try {
    const { topic } = req.params;
    const { limit } = req.query;
    const questions = await getQuestions(topic, limit);
    res.status(200).json(questions);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};
