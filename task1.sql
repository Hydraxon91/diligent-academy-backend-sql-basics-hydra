INSERT INTO pet_owner (name, age)
VALUES ('Bence Szabo', 27);
INSERT INTO pet (name, age, weight_in_kg, owner_id, kind_id)
VALUES
('Maci', 15, 4.5, 11, 1),
('Luca', 14, 6.0, 11, 1),
('Vacak', 2, 5.5, 11, 1),
('Maja', 1, 5.0, 11, 1);

UPDATE pet 
SET name = 'Mr. Maci' 
WHERE id = 19;

UPDATE pet 
SET age = age + 1
WHERE age > 5;

DELETE FROM pet
WHERE name = 'Simba';