CREATE TABLE shopping_data (
invoice_no varchar (255),
customer_id int,
gender varchar (15),
age tinyint,
category varchar(40),
quantity int,
price decimal(10,2),
payment_method varchar(20),
invoice_date date,
shopping_mall varchar(40));

INSERT INTO shopping_data (invoice_no, customer_id,gender,age,category,quantity,price,payment_method,invoice_date,shopping_mall)
VALUES
('I138884',241288,'Female',28,'Clothing',5,1500.4,'Credit Card','05-08-2022','Forum Istanbul'),
('I317333',111565,'Male',21,'Shoes',3,1800.51,'Debit Card','2021-12-12','Forum Istanbul'),
('I127801',266599,'Male',20,'Clothing',1,300.08,'Cash','2021-11-09','Metrocity'),
('I173702',988172,'Female',66,'Shoes',5,3000.85,'Credit Card','2021-05-16','Metropol AVM'),
('I337046',189076,'Female',53,'Books',4,60.6,'Cash','2021-10-24','Kanyon'),
('I227836',657758,'Female',28,'Clothing',5,1500.4,'Credit Card','2022-05-24','Forum Istanbul'),
('I121056',151197,'Female',49,'Cosmetics',1,40.66,'Cash','2022-03-13','Istinye Park'),
('I293112',176086,'Female',32,'Clothing',2,600.16,'Credit Card','2021-01-13','Mall of Istanbul'),
('I293455',159642,'Male',69,'Clothing',3,900.24,'Credit Card','2021-11-04','Metrocity'),
('I326945',283361,'Female',60,'Clothing',2,600.16,'Credit Card','2021-08-21','Kanyon'),
('I306368',240286,'Female',36,'Food & Beverage',2,10.46,'Cash','2022-12-25','Metrocity'),
('I139207',191708,'Female',29,'Books',1,15.15,'Credit Card','2022-10-28','Emaar Square Mall'),
('I640508',225330,'Female',67,'Toys',4,143.36,'Debit Card','2022-07-30','Metrocity'),
('I179802',312861,'Male',25,'Clothing',2,600.16,'Cash','2022-11-17','Cevahir AVM'),
('I336189',555402,'Female',67,'Clothing',2,600.16,'Credit Card','2022-06-03','Kanyon'),
('I688768',362288,'Male',24,'Shoes',5,3000.85,'Credit Card','2021-11-07','Viaport Outlet'),
('I294687',300786,'Male',65,'Books',2,30.3,'Debit Card','2021-04-01','Metrocity'),
('I195744',330667,'Female',42,'Food & Beverage',3,15.69,'Credit Card','2022-01-05','Zorlu Center'),
('I993048',218149,'Female',46,'Clothing',2,600.16,'Cash','2021-07-26','Metropol AVM'),
('I992454',196845,'Male',24,'Toys',4,143.36,'Cash','2023-03-07','Cevahir AVM'),
('I183746',220180,'Male',23,'Clothing',1,300.08,'Credit Card','2022-12-02','Emaar Square Mall'),
('I412481',125696,'Female',27,'Food & Beverage',1,5.23,'Cash','2021-05-01','Cevahir AVM'),
('I823067',322947,'Male',52,'Clothing',2,600.16,'Credit Card','2022-06-18','Cevahir AVM'),
('I252275',313348,'Male',44,'Technology',5,5250,'Cash','2021-10-26','Kanyon'),
('I174250',204553,'Female',42,'Books',5,75.75,'Cash','2022-12-16','Metrocity'),
('I195396',285161,'Male',51,'Toys',2,71.68,'Debit Card','2021-05-16','Istinye Park'),
('I196704',289625,'Female',25,'Cosmetics',5,203.3,'Credit Card','2022-04-20','Mall of Istanbul'),
('I217053',192344,'Male',50,'Shoes',4,2400.68,'Cash','2022-10-10','Emaar Square Mall'),
('I655874',447138,'Female',65,'Shoes',3,1800.51,'Cash','2022-02-23','Cevahir AVM');

SELECT *
FROM shopping_data;

SELECT*
FROM shopping_data
WHERE payment_method = 'Credit Card' AND gender = 'Female';

/* Average quantity of purchase broke down by gender */

SELECT AVG(quantity) as 'Average quantity of purchase/ Female customers'
FROM shopping_data
WHERE gender = 'Female';

SELECT AVG(quantity) as 'Average quantity of purchase/ Male customers'
FROM shopping_data
WHERE gender = 'Male';

/*Average price of purchase broke down by gender */
/* zaokraglic do dwoch miejsc po przecinku*/

SELECT AVG(price) as 'Average price/ Male customers'
FROM shopping_data
WHERE gender = 'Male';

SELECT AVG(price) as 'Average price/ Female customers'
FROM shopping_data
WHERE gender = 'Female';

SELECT TOP 5*
FROM shopping_data
WHERE category = 'Clothing'
ORDER BY quantity DESC;

SELECT DISTINCT shopping_mall
FROM shopping_data;

SELECT shopping_mall, SUM(price) as 'Sum of purchases'
FROM shopping_data
WHERE gender = 'Female' OR gender = 'Male'
GROUP BY shopping_mall;

SELECT DISTINCT category
FROM shopping_data;

SELECT AVG(age) as 'Average age of Female customer buying in Mall of Istanbul'
FROM shopping_data
WHERE gender = 'Female' and shopping_mall = 'Mall of Istanbul';

