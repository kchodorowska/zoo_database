SELECT Animals.species, Meals_Catalog.name, AVG(Real_Meals.portion) AS avg_portion, 
		MAX(Real_Meals.portion) AS max_portion, MIN(Real_Meals.portion) AS min_portion
	FROM Animals 
		JOIN Animal_Diet ON Animals.id=Animal_Diet.animal_id
		JOIN Real_Meals ON Animal_Diet.id=Real_Meals.animal_diet_id
		JOIN Meals_Catalog ON Real_Meals.meal_id=Meals_Catalog.id
	GROUP BY species, Meals_Catalog.name;