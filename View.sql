CREATE VIEW View_Newborn_Animals AS
SELECT name, species, country_of_origin, sex, sector_id, box_id
FROM  Animals
WHERE age < 1 AND country_of_origin = 'Poland'
WITH CHECK OPTION;