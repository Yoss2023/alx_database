-- Print the full table description of first_table

-- Select the table schema from information_schema
SELECT
    GROUP_CONCAT('CREATE TABLE `', TABLE_NAME, '` (',
                 GROUP_CONCAT(COLUMN_NAME, ' ', COLUMN_TYPE
                              IF(IS_NULLABLE = 'NO', ' NOT NULL', ''),
                              IF(COLUMN_DEFAULT IS NOT NULL,
                                 CONCAT(' DEFAULT ', QUOTE(COLUMN_DEFAULT)),
                                 ''),
                              IF(COLUMN_KEY = 'PRI', ' PRIMARY KEY', '')),
                 ') ENGINE=', ENGINE, ' DEFAULT CHARSET=', CHARACTER_SET_NAME) AS 'Create Table'
FROM
    information_schema.COLUMNS
WHERE
    TABLE_SCHEMA = 'hbtn_0c_0'
    AND TABLE_NAME = 'first_table'
GROUP BY
    TABLE_NAME;

