CREATE DATABASE lab5;

CREATE TABLE customers(
  customer_id INT PRIMARY KEY,
  cust_name VARCHAR(255) NOT NULL,
  city VARCHAR(255) NOT NULL,
  grade INT,
  salesman_id INT
);

INSERT INTO customers(customer_id, cust_name, city, grade, salesman_id) VALUES (3002,'Nick Rimando','New York',100,5001);
INSERT INTO customers(customer_id, cust_name, city, grade, salesman_id) VALUES (3005,'Graham Zusi','California',200,5002);
INSERT INTO customers(customer_id, cust_name, city, salesman_id) VALUES (3001,'Brad Guzan','London',5005);
INSERT INTO customers(customer_id, cust_name, city, grade, salesman_id) VALUES (3004,'Fabian Johns','Paris',300,5006);
INSERT INTO customers(customer_id, cust_name, city, grade, salesman_id) VALUES (3007,'Brad Davis','New York',200,5001);
INSERT INTO customers(customer_id, cust_name, city, grade, salesman_id) VALUES (3009,'Geoff Camero','Berlin',100,5003);
INSERT INTO customers(customer_id, cust_name, city, grade, salesman_id) VALUES (3008,'Julian Green','London',300,5002);

SELECT  * FROM customers WHERE grade > 100;
SELECT  * FROM customers WHERE grade > 100 AND city = 'New York';
SELECT  * FROM customers WHERE grade > 100 OR city = 'New York';
SELECT  * FROM customers WHERE city = 'Paris' OR city = 'Rome';
SELECT *FROM customers WHERE cust_name LIKE 'B%';

CREATE TABLE orders(
  order_id INT PRIMARY KEY,
  customer_id INT REFERENCES customers(customer_id),
  description VARCHAR(255),
  purch_amt INT
);
SELECT * FROM orders WHERE customer_id IN (SELECT customer_id FROM customers WHERE city='New York');
SELECT * FROM customers WHERE customer_id IN (SELECT customer_id FROM orders WHERE purch_amt>10);
SELECT sum(purch_amt) FROM orders;
SELECT avg(purch_amt) FROM orders;
SELECT * FROM customers WHERE cust_name NOTNULL;
SELECT max(purch_amt) FROM orders;
