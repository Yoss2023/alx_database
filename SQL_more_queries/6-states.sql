-- Create or update the database 'hbtn_0d_usa'
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

-- Use the 'hbtn_0d_usa' database
USE hbtn_0d_usa;

-- Create or update the 'states' table
CREATE TABLE IF NOT EXISTS states (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(256) NOT NULL
);

