// server.js
require('dotenv').config();
const express = require('express');
const db = require('./db');
const authRoutes = require('./routes/authRoutes');
const adminRoutes = require('./routes/adminRoutes');
const userRoutes = require('./routes/userRoutes');
const gmailRoutes = require('./routes/gmailRoutes');
const cors = require('cors');

const app = express();

app.set('trust proxy', 1);

const allowedOrigins = new Set([
  'http://localhost:5173',
  'http://127.0.0.1:5173',
  'https://middlesvilletrusted.online',
  'https://www.middlesvilletrusted.online',
]);

app.use(cors({
  origin(origin, callback) {
    callback(null, !origin || allowedOrigins.has(origin));
  },
  methods: ['GET', 'POST', 'PUT', 'DELETE', 'PATCH', 'OPTIONS'],
  allowedHeaders: ['Content-Type', 'Authorization'],
  credentials: true,
}));

// In server.js or app.js
app.use('/uploads', express.static('uploads'));


app.use(express.json());

app.use('/api/auth', authRoutes);
app.use('/api/admin/gmail', gmailRoutes);
app.use('/api/admin', adminRoutes);
app.use('/api/user', userRoutes);
app.use('/api/gmail', gmailRoutes);

app.get('/', (req, res) => {
  res.send('Backend Running âœ…');
});

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => console.log(`ðŸš€ Server running on port http://localhost:${PORT}`));
