CREATE DATABASE lab1;


CREATE TABLE users
(
  id SERIAL,
  firstname varchar(50),
  lastname varchar(50)
);



ALTER TABLE users
ADD COLUMN isadmin INT;


ALTER TABLE users
ALTER COLUMN isadmin TYPE bool USING isadmin::boolean;


ALTER TABLE users
ALTER COLUMN isadmin SET DEFAULT false ;



ALTER TABLE users
ADD CONSTRAINT pk PRIMARY KEY(id);


CREATE TABLE tasks
(
  id SERIAL,
  name varchar(50),
  user_id integer
);


DROP TABLE tasks;


DROP DATABASE lab1;