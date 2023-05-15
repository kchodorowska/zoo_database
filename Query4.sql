SELECT DISTINCT i1.ingredient_id AS ingredient, i1.ingredient_tag, i2.ingredient_id AS substitute
FROM Ingredient_Meal AS i1,  Ingredient_Meal AS i2
WHERE i1.ingredient_id<>i2.ingredient_id
AND i1.ingredient_tag=i2.ingredient_tag;