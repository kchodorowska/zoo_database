SELECT Ingredients_Catalog.name, warehouse_name, MIN(date) AS [date]
	FROM Warehouse_Ingredients
	JOIN Ingredients_Catalog 
		ON Ingredients_Catalog.id=Warehouse_Ingredients.ingredient_id
	WHERE date>CAST(GETDATE() AS DATE)
GROUP BY Ingredients_Catalog.name, warehouse_name;