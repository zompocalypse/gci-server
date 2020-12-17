const express = require('express');
const { requireAuth } = require('../middleware/jwt-auth');
const RecipesService = require('./recipes-service');

const recipesRouter = express.Router();
const jsonBodyParser = express.json();

recipesRouter.route('/').get((req, res, next) => {
  RecipesService.getAllRecipes(req.app.get('db'))
    .then((recipes) => {
      return res.json(recipes);
    })
    .catch(next);
});

module.exports = recipesRouter;
