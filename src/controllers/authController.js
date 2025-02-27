import { registerUser, loginUser, verifyToken } from '../service/authService.js';

export const register = async (req, res) => {
    try {
        const { email, password } = req.body;
        const token = await registerUser(email, password);
        res.json({ token });
    } catch (error) {
        res.status(400).json({ message: error.message });
    }
};

export const login = async (req, res) => {
    try {
        const { email, password } = req.body;
        const token = await loginUser(email, password);
        res.json({ token });
    } catch (error) {
        res.status(400).json({ message: error.message });
    }
};

export const authenticateToken = async (req, res, next) => {
    const token = req.headers['authorization'];
    if (!token) {
        return res.status(401).json({ error: 'Token not provided' });
    }

    try {
        const user = await verifyToken(token);
        req.user = user;
        next();
    } catch (error) {
        res.status(403).json({ error });
    }
};
