CREATE TABLE Sectors(
id int IDENTITY(1,1) PRIMARY KEY,
[name] varchar(15)
);

CREATE TABLE Sector_Box(
sector_id int NOT NULL REFERENCES Sectors(id) ON DELETE CASCADE,
box_id int NOT NULL,
CONSTRAINT UC_Sector_Box UNIQUE (sector_id, box_id),
CONSTRAINT PK_Sector_Box PRIMARY KEY (sector_id, box_id)
);

ALTER TABLE Sector_Box
ADD [location] varchar(5),
CHECK ([location] in ('north', 'south', 'west', 'east'));

CREATE TABLE Animals(
id int IDENTITY(1,1) PRIMARY KEY,
age int,
species varchar(20),
[name] varchar(15),
country_of_origin varchar(20),
sex varchar(7) DEFAULT 'unknown',
sector_id int,
box_id int,
CONSTRAINT FK_AnimalsSectorBox FOREIGN KEY (sector_id, box_id) REFERENCES Sector_Box(sector_id, box_id) ON DELETE SET NULL
);

ALTER TABLE Animals
ADD CHECK (age<=400 and sex in ('male', 'female', 'unknown'));

CREATE TABLE Caregivers(
id int IDENTITY(1,1) PRIMARY KEY,
first_name varchar(20),
last_name varchar(20) UNIQUE,
sector_id int REFERENCES Sectors ON DELETE SET NULL
);

CREATE TABLE Diets_Catalog(
id int IDENTITY(1,1) PRIMARY KEY,
[name] varchar(30)
);

CREATE TABLE Animal_Diet(
id int IDENTITY(1,1) PRIMARY KEY,
[from] date NOT NULL,
[to] date,
[description] varchar(150),
diet_id int REFERENCES Diets_Catalog (id) ON DELETE CASCADE,
animal_id int REFERENCES Animals (id) ON DELETE CASCADE
);

CREATE TABLE Meals_Catalog(
id int IDENTITY(1,1) PRIMARY KEY,
time_of_serving time,
[name] varchar(15),
diet_id int REFERENCES Diets_Catalog (id) ON DELETE SET NULL
);

CREATE TABLE Ingredients_Catalog(
id int IDENTITY(1,1) PRIMARY KEY,
[name] varchar(20)
);

CREATE TABLE Units(
id int IDENTITY(1,1) PRIMARY KEY,
[name] varchar(20)
);

CREATE TABLE Ingredient_Meal(
portion float,
ingredient_tag char(2),
meal_id int REFERENCES Meals_Catalog ON DELETE CASCADE,
ingredient_id int REFERENCES Ingredients_Catalog ON DELETE CASCADE,
unit_id int REFERENCES Units ON UPDATE SET NULL
);

CREATE TABLE Warehouse_Ingredients(
warehouse_name varchar(30),
ingredient_id int REFERENCES Ingredients_Catalog (id) ON DELETE CASCADE,
amount DECIMAL(10,2),
[date] DATE,
CONSTRAINT PK_Warehouse_Ingredients PRIMARY KEY (warehouse_name, ingredient_id),
unit_id int FOREIGN KEY REFERENCES Units (id) ON UPDATE SET NULL
);

CREATE TABLE Real_Meals(
date_time_of_serving datetime,
id int IDENTITY(1,1) PRIMARY KEY,
portion decimal(5,2),
caregiver_id int FOREIGN KEY REFERENCES Caregivers (id) ON DELETE SET NULL,
meal_id int FOREIGN KEY REFERENCES Meals_Catalog (id) ON DELETE NO ACTION,
animal_diet_id int FOREIGN KEY REFERENCES Animal_Diet (id) ON DELETE CASCADE
);

CREATE TABLE Real_Ingredients(
id int IDENTITY(1,1) PRIMARY KEY,
amount decimal(4,2),
warehouse_name varchar(30), 
ingredient_id int,
CONSTRAINT FK_Warehouse_Ingredient FOREIGN KEY (warehouse_name, ingredient_id) REFERENCES Warehouse_Ingredients(warehouse_name, ingredient_id) ON DELETE SET NULL,
real_meal_id int FOREIGN KEY REFERENCES Real_Meals (id) ON DELETE SET NULL
);