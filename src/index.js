import express from 'express';
import dotenv from 'dotenv';
import cors from 'cors';
import router from './routes/authRoutes.js';

dotenv.config();

const app = express();
const PORT = process.env.PORT 

app.use(express.json());
app.use(cors({
  origin: 'http://localhost:5173', 
  methods: ['GET', 'POST', 'PUT', 'DELETE'],
  allowedHeaders: ['Content-Type', 'Authorization']
}));
app.use('/', router);

app.listen(PORT, () =>  {
  console.log('Server is running on port 3000');
})
