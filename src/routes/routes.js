import express from 'express';
import { login, register } from '../controllers/authController.js';
import { getQuestionsByTopic } from '../controllers/questionsController.js';

const router = express.Router();

router.post('/register', register)
router.post('/login', login)


// rotas para chamar as perguntas do quiz
router.get('/questions/:topic', getQuestionsByTopic);

router.post('/submit-answer', (req, res) => {
  res.status(200).json({ message: "Resposta recebida com sucesso" });
});

export default router;