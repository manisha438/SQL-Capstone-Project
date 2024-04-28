/* Session 2: Creating a Database
1.a. Create a database with the name: AbleJobs
2.a. Create a database with the name: AbleJobs
*/
create database ablejobs;
use ablejobs;
-- b. Create the following Table with the name: Sales1 --
create table Sales1(salesman_id int, name varchar(50), city varchar(50),comission decimal(5,2));
INSERT INTO Sales1 values(5001,"James Hoog","New York",0.15);
INSERT INTO Sales1 values(5002,"Nail Knite","Paris",0.13);
INSERT INTO Sales1 values(5005,"Pit Alex","Landon",0.11);
INSERT INTO Sales1 values(5006,"Mc Lyon","Paris",0.14);
INSERT INTO Sales1 values(5007,"Paul Adam","Rome",0.13);
INSERT INTO Sales1 values(5003,"Lauson Hen","San Jose ",0.12);
-- c. Display all the data in the above table--
select * from Sales1;
-- b. Create the following Table with the name: Sales2 --
CREATE TABLE Sales2(customer_id INT PRIMARY KEY,cust_name VARCHAR(255),city VARCHAR(255),grade INT, salesman_id INT);
INSERT INTO Sales2 (customer_id, cust_name, city, grade, salesman_id)
VALUES
(3002, 'Nick Rimando', 'New York', 100,5001),
(3007, 'Brad Davis', 'New York', 200,5001),
(3005, 'Graham Zusi', 'California', 200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidor', 'Moscow', 200, 5007);
-- c. Display all the data in the above table --
select * from Sales2;
/* Session 3: Other Basic Queries
1.c. In the above table, write a SQL query to change the following data:
i. Change commission of salesman with name of ‘Pit Alex’ to 0.22
*/
update Sales1 
set comission = 0.22 
where name = 'Pit Alex';
-- ii. Change city of salesman with salesman_id of ‘5003’ to Paris --
update Sales1 
set city = "Paris"
where salesman_id=5003;
/* 2.c. In the above table, write a SQL query to alter the following data:
i. Change grade of customer with name of ‘Graham Zusi’ to 300 */
update Sales2 
set grade = 300
where cust_name = "Graham Zusi";
/* 2.ii. Change city of customer with cust_id of ‘3009’ to London
*/
update Sales2 
set city = "London"
where customer_id = 3009;
/* Session 4: Functions and Wildcards
1.c.from Sales1 table write a SQL query to find the details of those salespeople who
come from the 'Paris' City or 'Rome' City. Return salesman_id, name, city,
commission*/
select salesman_id, name, city,
comission from Sales1 where city in("Paris","Rome");
/* 1.dfrom Sales1 table write a SQL query to find the details of those salespeople
who live in cities apart from 'Paris' and 'Rome'. Return salesman_id, name, city,
commission.
*/
select * from Sales1 where city not in("Paris","Rome");
/*1.e from Sales1 table write a SQL query to find the details of salespeople who get
the commission in the range from 0.12 to 0.14 (begin and end values are included).
Return salesman_id, name, city, and commission.
*/
select * from Sales1 where comission BETWEEN 0.12 AND 0.14;
/*1.f.From the Sales1 table  write a SQL query to find the details of those salespeople
whose name starts with any letter within 'A' and 'L' (not inclusive). Return
salesman_id, name, city, commission.
*/
select * from Sales1 where name BETWEEN "A%" AND "L%";
/*1.g.From the Sales2 table, write a SQL query to find the details of the customers
whose name begins with the letter 'B'. Return customer_id, cust_name, city, grade,
salesman_id.
*/
select * from sales2 where cust_name LIKE "B%";
/*1.h. From From the Sales2 table, write a SQL query to find the details of the customers
whose names end with the letter 'n'. Return customer_id, cust_name, city, grade,
salesman_id.*/
select * from sales2 where cust_name LIKE "%N";
/*1.i. the From the Sales1 table, write a SQL query to find the details of those salespeople
whose name starts with ‘N’ and the fourth character is 'l'. Rests may be any
character. Return salesman_id, name, city, commission.*/
select * from sales1 where name LIKE "N__l%";
-- 2.b. Create the following Table with the name: Nobel --
create table Nobel(Year int,Subject varchar(100),Winner varchar(100),Country varchar(100),Catgory varchar(100));

INSERT INTO Nobel (Year, Subject, Winner, Country, Catgory)
VALUES
(1970, 'Physics', 'Hannes Alfven','Sweden','Scientist' ),
(1970, 'Physics', 'Louis Neel','France', 'Scientist'),
(1970, 'Chemistry', 'Luis Federico Leloir','France', 'Scientist'),
(1970, 'Physiology', 'Ulf von Euler','Sweden', 'Scientist'),
(1970, 'Physiology', 'Bernard Katz','Germany', 'Scientist'),
(1970, 'Literature', 'Aleksandr Solzhenitsyn','Russia', 'Linguist'),
(1970, 'Economics', 'Paul Samuelson','USA', 'Economist'),
(1970, 'Physiology', 'Julius Axelrod','USA', 'Scientist'),
(1971, 'Physics', 'Dennis Gabor','Hungary', 'Scientist'),
(1971, 'Chemistry', 'Gerhard Herzberg','Germany', 'Scientist'),
(1971, 'peace', 'Willy Brandt','Germany', 'Chancellor'),
(1971, 'Literature','Pablo Neruda', 'Chile', 'Linguist'),
(1971, 'Economics','Simon Kuznets', 'Russia', 'Economist'),
(1978, 'peace','Anwar al-Sadat', 'Egypt', 'President'),
(1978, 'peace', 'Menachem Begin','Israel','Prime Minister'),
(1987, 'Chemistry', 'Donald J. Cram','USA', 'Scientist'),
(1987, 'Chemistry', 'Jean-Marie Lehn','France', 'Scientist'),
(1987, 'Physiology', 'Susumu Tonegawa','Japan', 'Scientist'),
(1994, 'Economics', 'Reinhard Selten','Germanv', 'Economist'),
(1994, 'peace', 'Yitzhak Rabin','Israel', 'Prime Minister'),
(1987, 'Physics','Johannes Georg Bednorz', 'Germanv', 'Scientist'),
(1987, 'Literature', 'Joseph Brodsky','Russia', 'Linguist'),
(1987, 'Economics', 'Robert Solow','USA', 'Economist'),
(1994, 'Literature','Kenzaburo Oe', 'Japan', 'Linguist');
truncate table Nobel;
select * from Nobel;
/*2.c. From the above table, write a SQL query to find the Nobel Prize winner(s) in the
following years (Return year, subject and winner) :
i. 1970
ii. 1987
*/
select Year, Subject, Winner from Nobel where year in(1970,1987); 
/* 2.d. From the above table, write a SQL query to find the Nobel Prize winner in 'Literature'
in the year 1971. Return winner.
*/
select Winner from Nobel where Subject = "Literature" and year= 1971;
/*2.e.From the following table, write a SQL query to find the Nobel Prize winner 'Dennis
Gabor'. Return year, subject.
*/
select Year, Subject from Nobel where winner = "Dennis Gabor";
/*2.f. From the following table, write a SQL query to find the Nobel Prize winners in
'Physics' since the year 1950. Return winner
*/
select Winner from Nobel where Subject="Physics" AND year >=1950;
/*2.g. From the following table, write a SQL query to find the Nobel Prize winners in
'Chemistry' between the years 1965 to 1975. Begin and end values are included.
Return year, subject, winner, and country
*/
select year, subject, winner, country from Nobel where Subject="Chemistry" AND year between 1965 and 1975;
/*2.h. Write a SQL query to show all details of the Prime Ministerial winners after 1972 of
Menachem Begin and Yitzhak Rabin
*/
 select * from Nobel where Catgory="Prime Minister" AND year >1972 and Winner IN ('Menachem Begin', 'Yitzhak Rabin');
/*2.i. From the following table, write a SQL query to find the details of the winners whose
first name matches with the string 'Louis'. Return year, subject, winner, country, and
category
*/
SELECT Year, Subject, Winner, Country, Catgory FROM Nobel WHERE Winner like "Louis%";
/*2.j. From the following table, write a SQL query to find the details of the Nobel Prize
winner 'Johannes Georg Bednorz'. Return year, subject, winner, country, and
category.
*/
SELECT Year, Subject, Winner, Country, Catgory FROM Nobel WHERE Winner = 'Johannes Georg Bednorz';
-- 3. b. Create the following Table with the name: Orders --
create table Orders(ord_no int, purch_amt decimal(6,2), ord_date date,customer_id int,salesman_id int);
INSERT INTO Orders (ord_no, purch_amt, ord_date, customer_id, salesman_id)
VALUES
(70001, 150.5, '2012-10-05',3005,5002),
(70009, 270.65, '2012-09-10',3001, 5005),
(70002, 65.26, '2012-10-05',3002, 5001),
(70004, 110.5, '2012-08-17',3009, 5003),
(70007, 948.5, '2012-09-10',3005, 5002),
(70005, 2400.6, '2012-07-27',3007, 5001),
(70008, 5760, '2012-09-10',3002, 5001),
(70010, 1983.43, '2012-10-10',3004, 5006),
(70003, 2480.4, '2012-10-10',3009, 5003),
(70012, 250.45, '2012-06-27',3008, 5002),
(70011, 75.29, '2012-08-17',3003, 5007),
(70013, 3045.6,'2012-04-25', 3002, 5001);
select * from Orders;
truncate table Orders;
/*3.c. From the following table, write a SQL query to calculate total purchase amount of all
orders. Return total purchase amount*/
select sum(purch_amt) as total_purchase_amount from Orders;
 /*3.d. From the following table, write a SQL query to calculate average purchase amount of
all orders. Return average purchase amount.
*/
select avg(purch_amt) as average_purchase_amount from Orders;
/*3.e. From the following table, write a SQL query to count the number of unique
salespeople. Return number of salespeople.
*/
select count(distinct salesman_id) as number_of_salespeople from Orders;
/*3.f. From the following table, write a SQL query to count the number of customers.
Return number of customers.
*/
select count(distinct customer_id) as number_of_customers from Orders;
/*Session 5: Union and Join
1.
a. Create a database with the name: AbleJobs
b. Create the following Table with the name: Nobel
c. From the above table, write a SQL query to combine the winners in Physics, 1970
and in Economics, 1971. Return year, subject, winner, country, and category.
*/
select Year, Subject, Winner, Country, Catgory from Nobel where(Subject="Physics" and Year=1970) or (Subject="Economics" and Year=1971);
/*2.
a. Create a database with the name: AbleJobs
b. Create the following Table with the name: Sales2
c. Create the following table with the name: Sales1
d. From the above tables write a SQL query to find the salesperson and customer who
belongs to same city. Return Salesman, cust_name and city.
*/
select s.name as Salesman , c.cust_name,c.city from sales1 s join sales2 c on  s.salesman_id=c.salesman_id and s.city=c.city; 
/* e. From the above tables write a SQL query to find the salesperson(s) and the
customer(s) he handle. Return Customer Name, city, Salesman, commission.
*/
select c.cust_name,c.city,s.name,s.comission
from sales2 c join sales1 s on c.salesman_id=s.salesman_id;
/*f. From the above tables write a SQL query to find those salespersons who received a
commission from the company more than 12%
*/
SELECT * FROM sales1 WHERE comission > 0.12;
/*g. From the following tables write a SQL query to find those salespersons do not live in
the same city where their customers live and received a commission from the
company more than 12%. Return Customer Name, customer city, Salesman,
salesman city, commission.
*/
select c.cust_name as "Customer Name",c.city as "customer city", s.name as "Salesman" ,s.city as "salesman city",s.comission
from sales1 s join sales2 c on  s.salesman_id=c.salesman_id where s.city <> c.city and s.comission >0.12;
/*
Session 6 & 7: Nested Queries & Normalization
Consider a database for an online bookstore. The database consists of two tables:
Customers and Orders. Here are the structures of the tables:
Customers Table:
CustomerID CustomerName City
1 John Smith New York
2 Jane Doe Los Angeles
3 Bob Johnson Chicago
Orders Table:
OrderID CustomerID Product Quantity Price
1 1 Laptop 2 340
2 1 Printer 1 240
3 2 Smartphone 3 70
4 3 Tablet 2 80
*/
create database online_bookstore;
use online_bookstore;
create table Customers(CustomerID int primary key, CustomerName varchar(100),City varchar(100));
INSERT INTO Customers (CustomerID, CustomerName, City)
VALUES
(1, "John Smith","New York"),
(2, "Jane Doe","Los Angeles"),
(3, "Bob Johnson","Chicago");
SELECT * FROM Customers;
create table Orders(OrderID int primary key, CustomerID int,Product varchar(100),Quantity int,Price int, FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID));
INSERT INTO Orders (OrderID, CustomerID,Product, Quantity,Price)
VALUES
(1, 1,"Laptop",2,340),
(2, 1,"Printer",1,240),
(3, 2,"Smartphone",3,70),
(4, 3,"Tablet",2,80);
select * from Orders;
drop table Orders; 
/*Question 1:
Retrieve the names of all customers who have placed an order for a product with a price
greater than $100.
*/
SELECT DISTINCT c.CustomerName
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.price > 100;
/*Question 2:
List the products that have been ordered by customers from the same city as customer 'John
Smith'
*/
SELECT DISTINCT o.Product
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE c.City = (SELECT City FROM Customers WHERE CustomerName = 'John Smith');
/*Question 3:
Find the order IDs and total order amounts for orders that contain at least one product with a
quantity greater than 2.
*/
SELECT OrderID,
SUM(Quantity * Price) AS total_order_amount
FROM Orders  WHERE Quantity > 2
GROUP BY OrderID;

