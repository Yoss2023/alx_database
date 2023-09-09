-- Print the full table description of first_table in the specified format

-- Define variables to store column definitions and constraints
SET SESSION group_concat_max_len = 1000000;
SET @columns = NULL;
SET @constraints = NULL;

-- Retrieve column definitions
SELECT
    GROUP_CONCAT(
        IF(@columns IS NULL, '', ', '),
        '`', COLUMN_NAME, '` ',
        COLUMN_TYPE,
        IF(IS_NULLABLE = 'NO', ' NOT NULL', ''),
        IF(COLUMN_DEFAULT IS NOT NULL,
            CONCAT(' DEFAULT ', IF(CHARACTER_MAXIMUM_LENGTH IS NOT NULL, QUOTE(COLUMN_DEFAULT), COLUMN_DEFAULT)),
            ''),
        IF(EXTRA = 'auto_increment', ' AUTO_INCREMENT', '')
    ) INTO @columns
FROM
    information_schema.COLUMNS
WHERE
    TABLE_SCHEMA = 'hbtn_0c_0'
    AND TABLE_NAME = 'first_table';

-- Retrieve constraints (primary key)
SELECT
    GROUP_CONCAT(
        IF(@constraints IS NULL, '', ', '),
        'PRIMARY KEY (`', COLUMN_NAME, '`)'
    ) INTO @constraints
FROM
    information_schema.KEY_COLUMN_USAGE
WHERE
    TABLE_SCHEMA = 'hbtn_0c_0'
    AND TABLE_NAME = 'first_table'
    AND CONSTRAINT_NAME = 'PRIMARY';

-- Print the formatted table description
SELECT
    CONCAT(
        'first_table',
        'CREATE TABLE `first_table` (',
        @columns,
        IF(@constraints IS NOT NULL, CONCAT(', ', @constraints), ''),
        ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;'
    ) AS 'Create Table';

