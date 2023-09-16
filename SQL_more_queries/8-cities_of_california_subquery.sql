-- Use the 'hbtn_0d_usa' database
USE hbtn_0d_usa;

-- Find the state ID for California
SELECT @california_id := id FROM states WHERE name = 'California';

-- Select the cities of California using the state ID
SELECT cities.id, cities.name
FROM cities
WHERE cities.state_id = @california_id
ORDER BY cities.id ASC;

