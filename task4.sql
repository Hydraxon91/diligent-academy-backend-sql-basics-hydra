--4 1
SELECT COUNT(*) as pets_count FROM pet

--4 2
SELECT pet_kind.name, COUNT(pet.*) AS kind_count
FROM pet
LEFT JOIN pet_kind ON pet.kind_id = pet_kind.id
GROUP BY pet_kind.name;

--4 3
SELECT pet_kind.name, COUNT(pet.*) AS kind_count
FROM pet
LEFT JOIN pet_kind ON pet.kind_id = pet_kind.id
GROUP BY pet_kind.name
ORDER BY  kind_count DESC;

--4 4
SELECT pet_kind.name, SUM(pet.weight_in_kg) AS total_weight
FROM pet
LEFT JOIN pet_kind ON pet.kind_id = pet_kind.id
GROUP BY pet_kind.name
ORDER BY total_weight DESC;

--4 5
SELECT pet_kind.name, SUM(pet.weight_in_kg) AS total_weight
FROM pet
LEFT JOIN pet_kind ON pet.kind_id = pet_kind.id
GROUP BY pet_kind.name
HAVING SUM(pet.weight_in_kg) > 10
ORDER BY total_weight DESC;

--4 6
SELECT pet_owner.name, COUNT(pet.id) AS pet_count
FROM pet
INNER JOIN pet_owner ON pet.owner_id = pet_owner.id
WHERE pet.owner_id IS NOT NULL
GROUP BY pet_owner.name
ORDER BY pet_count DESC
LIMIT 1;

--4 7
SELECT pet_owner.name, COUNT(pet.id) AS pet_count
FROM pet
INNER JOIN pet_owner ON pet.owner_id = pet_owner.id
WHERE pet.owner_id IS NOT NULL AND pet.kind_id = 2
GROUP BY pet_owner.name
ORDER BY pet_count DESC
LIMIT 1;

--4 8
SELECT pet_owner.name, COUNT(pet.id) AS pet_count, ROUND(AVG(pet.age), 2) AS pets_age
FROM pet
INNER JOIN pet_owner ON pet.owner_id = pet_owner.id
WHERE pet.owner_id IS NOT NULL
GROUP BY pet_owner.name
ORDER BY pet_count DESC;

