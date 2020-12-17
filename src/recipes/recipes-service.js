const xss = require('xss');

const RecipesService = {
  getAllRecipes(db) {
    return db.from('recipes AS r').select('*');
  },
};

module.exports = RecipesService;
