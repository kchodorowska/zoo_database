SELECT s.name, i.ingredient_id, COUNT(*) AS no_occurences
FROM Sectors AS s
INNER JOIN Caregivers AS c
ON c.sector_id=s.id
INNER JOIN Real_Meals AS r
ON r.caregiver_id=c.id
INNER JOIN Real_Ingredients as i
ON r.id=i.real_meal_id
GROUP BY s.name, i.ingredient_id
ORDER BY no_occurences DESC, s.name;