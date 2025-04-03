-- vscode 상의 sqlite확장설치
-- Use database -> Run Query

-- CREATE TABLE test(
--     id integer PRIMARY KEY AUTOINCREMENT,
--     name text,
--     age interger
-- );


-- table rename
ALTER TABLE test RENAME TO user;


ALTER TABLE user ADD COLUMN email TEXT;


ALTER TABLE user RENAME COLUMN name TO username;


DROP TABLE user;