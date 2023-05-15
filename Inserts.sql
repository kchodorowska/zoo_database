INSERT INTO Sectors ([name])
VALUES ('Aviary'),
    ('Mini zoo'),
    ('Arctics'),
    ('Savannah'),
    ('Monkeys island'),
    ('Cats'),
    ('Alpacas'),
    ('Alligators'),
    ('Aquarium'),
    ('S.Mammal house');

INSERT INTO Sector_Box (sector_id, box_id, [location])
VALUES (1, 1, 'west'),
    (1, 2, 'east'),
    (1, 3, 'south'),
    (6, 4, 'west'),
    (6, 5, 'east'),
    (6, 6, 'east'),
    (6, 7, 'south'),
    (3, 8, 'north'),
    (3, 9, 'west'),
    (9, 10, 'north');

INSERT INTO Animals (age, species, [name], country_of_origin, sex, sector_id, box_id)
VALUES 
    (13, 'eagle', 'Tommy', 'USA', 'male', 1, 1),
    (3, 'northern goshawk', 'Lana', 'Australia', 'female', 1, 2),
    (1, 'owl', 'Ada', 'India', 'female', 1, 3),
    (5, 'siberian tiger', 'Fluffy', 'Russia', 'male', 6, 4),
    (9, 'bengal tiger', 'Carla', 'India', 'female', 6, 5),
    (3, 'lion', 'Leo', 'Namibia', 'male', 6, 6),
    (6, 'lion', 'Ann', 'Namibia', 'female', 6, 7),
    (5, 'penguin', 'Frosty', 'USA', 'male', 3, 8),
    (4, 'penguin', 'Nana', 'USA', 'female', 3, 9),
    (10, 'red lionfish', 'Ugan', 'Brazil', 'male', 9, 10);

INSERT INTO Caregivers (first_name, last_name, sector_id)
VALUES 
    ('Ray', 'Kiri', 1),
    ('Mata', 'Zayyan', 1),
    ('Ayah', 'Millar', 6),
    ('Kamal', 'William', 6),
    ('Ava', 'Kramer', 6),
    ('Jenson', 'Herman', 3),
    ('Izaan', 'Harrington', 3),
    ('Sandra', 'Burgess', 2),
    ('Mikolaj', 'Oconnell', 4),
    ('Abdurrahman', 'Hampton', 9);

INSERT INTO Diets_Catalog ([name])
VALUES 
    ('Birds 1'),
    ('Birds 2'),
    ('Meat 1'),
    ('Meat 2'),
    ('Meat 3'),
    ('Fish 1'),
    ('Fish 2'),
    ('Fish 3'),
    ('Vege 1'),
    ('Vege 2');

INSERT INTO Animal_Diet ([from], [to], [description], diet_id, animal_id)
VALUES 
    ('2021-01-01 00:00:00.000', '2022-01-20 00:00:00.000', '3 times per day', 1, 1),
    ('2021-01-01 00:00:00.000', '2021-01-15 00:00:00.000', '2 times per day with additional water', 2, 2),
    ('2021-01-01 00:00:00.000', '2021-01-15 00:00:00.000', '2 times per day', 2, 3),
    ('2021-01-01 00:00:00.000', '2021-01-10 00:00:00.000', NULL, 3, 4),
    ('2021-01-10 00:00:00.000', '2022-01-20 00:00:00.000', NULL, 3, 4),
    ('2021-01-20 00:00:00.000', '2022-01-31 00:00:00.000', 'even bigger portions can be given', 3, 4),
    ('2021-01-20 00:00:00.000', '2022-01-31 00:00:00.000', 'cut into small pieces', 5, 7),
    ('2021-01-01 00:00:00.000', '2021-01-31 00:00:00.000', NULL, 8, 8),
    ('2021-01-01 00:00:00.000', '2021-01-20 00:00:00.000', NULL, 7, 9),
    ('2021-01-20 00:00:00.000', '2022-01-31 00:00:00.000', NULL, 6, 9);

INSERT INTO Meals_Catalog (time_of_serving, [name], diet_id)
VALUES 
    ('08:00:00.000', 'sunflower paste', 1),
    ('08:00:00.000', 'rye seeds', 1),
    ('08:00:00.000', 'lemon water', 1),
    ('16:00:00.000', 'sunflower paste', 1),
    ('16:00:00.000', 'rye seeds', 1),
    ('10:00:00.000', 'ham salad', 3),
    ('10:00:00.000', 'pork', 3),
    ('17:00:00.000', 'ham salad', 3),
    ('17:00:00.000', 'pork', 3),
    ('20:00:00.000', 'fried lamb', 3);

INSERT INTO Ingredients_Catalog ([name])
VALUES
    ('ham'),
    ('tomato'),
    ('cucumber'),
    ('pork'),
    ('lamb'),
    ('lemon'),
    ('water'),
    ('sunflower seeds'),
    ('rye seeds'),
    ('yoghurt');

INSERT INTO Units ([name])
VALUES
    ('g'),
    ('kg'),
    ('oz'),
    ('lb'),
    ('ton'),
    ('ml'),
    ('l'),
    ('mm'),
    ('cm'),
    ('m'),
    ('km');

INSERT INTO Ingredient_Meal (portion, ingredient_tag, meal_id, ingredient_id, unit_id)
VALUES
    (10, 'a', 1, 8, 1),
    (10, 'a', 1, 9, 1),
    (100, 'b', 1, 10, 5),
    (5, 'a', 2, 9, 1),
    (20, 'a', 3, 6, 1),
    (200, 'b', 3, 7, 1),
    (200, 'a', 6, 1, 1),
    (200, 'a', 6, 4, 1),
    (200, 'a', 6, 5, 1),
    (300, 'b', 6, 3, 1),
    (300, 'b', 6, 2, 1);

INSERT INTO Warehouse_Ingredients (warehouse_name, ingredient_id, amount, unit_id, [date])
VALUES
    ('main warehouse', 1, 15, 2, '2021-02-20'),
    ('small warehouse', 1, 10, 2, '2021-03-01'),
    ('main warehouse', 2, 140, 2, '2021-05-01'),
    ('main warehouse', 3, 50, 2, '2021-05-01'),
    ('main warehouse', 4, 210, 2, '2021-05-01'),
    ('main warehouse', 5, 246, 2, '2021-04-01'),
    ('main warehouse', 6, 156, 2, '2021-02-21'),
    ('small warehouse', 6, 16, 2, '2021-02-21'),
    ('main warehouse', 7, 1000, 6, '2022-04-11'),
    ('main warehouse', 8, 21, 2, '2021-07-30'),
    ('main warehouse', 9, 52, 2, '2021-03-19');

INSERT INTO Real_Meals (date_time_of_serving, portion, caregiver_id, meal_id, animal_diet_id)
VALUES
    ('2021-01-01 12:30:00.000', 1, 1, 5, 4),
    ('2021-01-30 12:30:00.000', 2, 1, 7, 3),
    ('2021-01-15 12:30:00.000', 5, 2, 4, 6),
    ('2021-01-07 12:30:00.000', 3, 5, 9, 7),
    ('2021-01-02 12:30:00.000', 1, 2, 3, 9),
    ('2021-01-19 12:30:00.000', 5, 9, 4, 2),
    ('2021-01-01 12:30:00.000', 7, 7, 9, 5),
    ('2021-01-29 12:30:00.000', 4, 4, 5, 3),
    ('2021-01-14 12:30:00.000', 9, 3, 1, 2),
    ('2021-01-13 12:30:00.000', 10, 1, 2, 8),
	('2021-01-15 12:30:00.000', 5, 1, 2, 8);

INSERT INTO Real_Ingredients (amount, warehouse_name, ingredient_id, real_meal_id)
VALUES
    (2.5, 'main warehouse', 1, 1),
    (1, 'main warehouse', 4, 5),
    (1, 'small warehouse', 1, 5),
    (3, 'main warehouse', 3, 2),
    (4, 'main warehouse', 2, 5),
    (3, 'small warehouse', 6, 4),
    (1.2, 'main warehouse', 7, 9),
    (1.1, 'main warehouse', 8, 9),
    (1, 'main warehouse', 5, 7),
    (6, 'main warehouse', 6, 4);
