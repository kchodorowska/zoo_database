SELECT name,
meals_count = (SELECT COUNT(m.id)
              FROM Meals_Catalog AS m
			  WHERE m.diet_id = d.id)
FROM Diets_Catalog AS d
WHERE name LIKE 'Meat%'
ORDER BY meals_count DESC;