SELECT name, age, weight_in_kg FROM pet;

SELECT name, age, weight_in_kg FROM pet
ORDER BY age DESC;

SELECT name, age, weight_in_kg FROM pet
ORDER BY age DESC, weight_in_kg DESC;


SELECT name, age, weight_in_kg FROM pet
ORDER BY weight_in_kg DESC
LIMIT 3 OFFSET 1;

SELECT name, age, weight_in_kg FROM pet
WHERE weight_in_kg > 5 AND age > 5;

SELECT DISTINCT owner_id FROM pet;

SELECT name, age, weight_in_kg, owner_id FROM pet
WHERE owner_id is null;