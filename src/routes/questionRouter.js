import express from 'express';
import { getQuestionsByTopic } from './controllers/questionsController.js';

const router = express.Router();

router.get('/questions/:topic', getQuestionsByTopic);

export default router;