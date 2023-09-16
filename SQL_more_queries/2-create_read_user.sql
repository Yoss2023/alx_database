-- Create or update the database 'hbtn_0d_2'
CREATE DATABASE IF NOT EXISTS hbtn_0d_2;

-- Create or update user 'user_0d_2' with the password 'user_0d_2_pwd'
CREATE USER IF NOT EXISTS 'user_0d_2'@'localhost' IDENTIFIED BY 'user_0d_2_pwd';

-- Grant USAGE privilege to 'user_0d_2' on all databases
GRANT USAGE ON *.* TO 'user_0d_2'@'localhost';

-- Grant SELECT privilege to 'user_0d_2' on the database 'hbtn_0d_2'
GRANT SELECT ON hbtn_0d_2.* TO 'user_0d_2'@'localhost';

-- Flush privileges to apply the changes
FLUSH PRIVILEGES;

