-- Use the 'hbtn_0d_usa' database
USE hbtn_0d_usa;

-- Select cities with state names and sort by cities.id
SELECT cities.id, cities.name, states.name
FROM cities
JOIN states ON cities.state_id = states.id
ORDER BY cities.id ASC;
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

