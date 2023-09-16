-- This is a comment in SQL

-- You can add comments to describe your SQL statements
SELECT * FROM users; -- This selects all records from the 'users' table

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

