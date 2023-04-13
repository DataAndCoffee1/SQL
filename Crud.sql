CREATE TABLE user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    age INTEGER);
    
INSERT INTO user (name, age)
    VALUES ("Susan", 19);
INSERT INTO user (name, age)
    VALUES ("Joe", 22);
    INSERT INTO user (name, age)
    VALUES ("Jack", 24);

    
UPDATE user set age = 20 where id = 1;
select * from user;

DELETE from user where id = 1;
select * from user;