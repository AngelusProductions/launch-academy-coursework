1.

SELECT dog_owners.name AS owner, lost_dog_collars.dog_name AS collar
FROM dog_owners
JOIN lost_dog_collars
ON (dog_owners.dog_name = lost_dog_collars.dog_name);

2.

SELECT lost_dog_collars.dog_name AS collar, dog_owners.name AS owner
FROM lost_dog_collars
Left OUTER JOIN dog_owners
ON (lost_dog_collars.dog_name = dog_owners.dog_name)
WHERE dog_owners.name IS NULL;

3.

SELECT lost_dog_collars.dog_name AS collar, dog_owners.name AS owner
FROM lost_dog_collars
LEFT OUTER JOIN dog_owners
ON (lost_dog_collars.dog_name = dog_owners.dog_name);                                               ;

4.

SELECT DISTINCT dog_owners.name AS owner, lost_dog_collars.dog_name AS dog
FROM dog_owners
LEFT OUTER JOIN lost_dog_collars
ON (lost_dog_collars.dog_name = dog_owners.dog_name);                                               ;
