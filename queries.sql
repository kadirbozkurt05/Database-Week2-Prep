--All Vegetarian Recipes with Potatoes
SELECT *
FROM Recipes
JOIN RecipeIngredients ON Recipes.RecipeID = RecipeIngredients.RecipeID
JOIN Ingredients ON RecipeIngredients.IngredientID = Ingredients.IngredientID
WHERE Recipes.CategoryID = 'Vegetarian' AND Ingredients.IngredientName = 'Potato';

--Cakes that Do Not Need Baking
SELECT *
FROM Recipes
WHERE CategoryID = 'Cakes' AND Instructions NOT LIKE '%bake%';


--Vegan and Japanese Recipes
SELECT *
FROM Recipes
JOIN Categories ON Recipes.CategoryID = Categories.CategoryID
WHERE Categories.CategoryName = 'Vegan' AND Recipes.CategoryID = 'Japanese';
