-- This is a comment in SQL

-- You can add comments to describe your SQL statements
SELECT * FROM users; -- This selects all records from the 'users' table
-- Check if 'user_0d_1' exists
SELECT user FROM mysql.user WHERE user = 'user_0d_1' AND host = 'localhost';

-- Check if 'user_0d_1' has the expected grants
SHOW GRANTS FOR 'user_0d_1'@'localhost';
-- Attempt to execute a query without selecting a database
SELECT * FROM non_existing_table;

# Log in to MySQL as the root user
mysql -h localhost -u root -p

# Enter your MySQL root password when prompted

# Create 'user_0d_1' if it doesn't exist and grant privileges
CREATE USER 'user_0d_1'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost';
FLUSH PRIVILEGES;

# Create 'user_0d_2' if it doesn't exist and grant privileges
CREATE USER 'user_0d_2'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_2'@'localhost';
FLUSH PRIVILEGES;

# Exit MySQL
exit

