import express from 'express';
import { login, register } from '../controllers/authController.js';
import { getQuestionsByTopic } from '../controllers/questionsController.js';

const router = express.Router();

router.post('/register', register)
router.post('/login', login)
router.get('/questions/:topic', getQuestionsByTopic);

export default router;
