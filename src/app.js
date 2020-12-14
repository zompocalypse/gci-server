require('dotenv').config();
const express = require('express');
const morgan = require('morgan');
const cors = require('cors');
const helmet = require('helmet');
const { NODE_ENV } = require('./config');
const authRouter = require('./auth/auth-router');
const errorHandler = require('./middleware/errorHandler');

const app = express();

const morganOption = NODE_ENV === 'production' ? 'tiny' : 'common';

app.use(cors());
app.use(morgan(morganOption));
app.use(helmet());

app.use('/api/auth', authRouter);

app.use(errorHandler);

module.exports = app;
