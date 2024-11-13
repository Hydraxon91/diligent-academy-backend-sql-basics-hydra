
--4 6
SELECT pet_owner.name, COUNT(pet.id) AS pet_count
FROM pet
INNER JOIN pet_owner ON pet.owner_id = pet_owner.id
WHERE pet.owner_id IS NOT NULL
GROUP BY pet_owner.name
ORDER BY pet_count DESC
LIMIT 1;
