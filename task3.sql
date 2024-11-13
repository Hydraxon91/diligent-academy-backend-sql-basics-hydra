--3 1
SELECT pet.name, pet_kind.name AS kind
FROM pet
INNER JOIN pet_kind ON pet.kind_id = pet_kind.id

--3 2
SELECT pet.name, pet_owner.name 
FROM pet
INNER JOIN pet_owner ON pet.owner_id = pet_owner.id
WHERE owner_id IS  NOT NULL

--3 3
SELECT pet.name AS pet_name, pet_owner.name AS owner_name
FROM pet
LEFT JOIN pet_owner ON pet.owner_id = pet_owner.id
WHERE pet.name IS NOT NULL;

--3 4
SELECT pet.name AS pet_name, pet_owner.name AS owner_name
FROM pet_owner
LEFT JOIN pet ON pet_owner.id = pet.owner_id
WHERE pet_owner.name IS NOT NULL;

--3 5

SELECT pet.name AS pet_name, pet_owner.name AS owner_name
FROM pet_owner
FULL JOIN pet ON pet_owner.id = pet.owner_id;