-- inserting booking -- 
INSERT INTO booking (bookingid, bookingtime, bookingpeople, bookinglength, tableid) VALUES (1111111, '2021-05-12',1, '01:00:00', 678765);
INSERT INTO booking (bookingid, bookingtime, bookingpeople, bookinglength, tableid) VALUES (2222222, '2021-08-23',6, '02:30:00', 234567);
INSERT INTO booking (bookingid, bookingtime, bookingpeople, bookinglength, tableid) VALUES (3333333, '2021-03-01',2, '03:00:00', 923444);
INSERT INTO booking (bookingid, bookingtime, bookingpeople, bookinglength, tableid) VALUES (4444444, '2021-06-03',4, '01:30:00', 398765);
INSERT INTO booking (bookingid, bookingtime, bookingpeople, bookinglength, tableid) VALUES (5555555, '2021-09-28',7, '00:30:00', 545676);
INSERT INTO booking (bookingid, bookingtime, bookingpeople, bookinglength, tableid) VALUES (6666666, '2021-07-23',2, '02:45:00', 145654);

-- inserting contacttracing --
INSERT INTO contacttracing (tableid, contacttracingname, contacttracingemail, contacttracingaddress, contacttracingphonenumber) VALUES (1656658, 'Matthew Tweedy', 'mynameistweedy@gmail.com', '12 Apple Road', 0875432322);  
INSERT INTO contacttracing (tableid, contacttracingname, contacttracingemail, contacttracingaddress, contacttracingphonenumber) VALUES (2323323, 'James Brown', 'jamesbrown@hotmail.com', '56 Potato Avenue', 0864343333);  
INSERT INTO contacttracing (tableid, contacttracingname, contacttracingemail, contacttracingaddress, contacttracingphonenumber) VALUES (3876547, 'Shopie King', 'sophieking@gmail.com', '4536 Walnut Avenue', 0854545545);  
INSERT INTO contacttracing (tableid, contacttracingname, contacttracingemail, contacttracingaddress, contacttracingphonenumber) VALUES (4776657, 'John Snow', 'johnsnow@gmail.com', '2685 Murphy Court', 0834444465);  
INSERT INTO contacttracing (tableid, contacttracingname, contacttracingemail, contacttracingaddress, contacttracingphonenumber) VALUES (5097888, 'Bob Smith', 'bobsmith@gmail.com','90 Hickory Ridge Drive', 0837678988);
INSERT INTO contacttracing (tableid, contacttracingname, contacttracingemail, contacttracingaddress, contacttracingphonenumber) VALUES (5543356, 'Joe Byron', 'joebyron@gmail.com','9 bully avenue', 0837678988); 

-- INSERTING INTO EMPLOYEE -- 
INSERT INTO employee( employeename, employeephonenumber, employeeemail, employeedob, start_of_employment, employeeid) VALUES( 'Valerie sams', 0893873547, 'val@burgershack.com',date '2000-02-13',date '2020-08-09', 8467296);
INSERT INTO employee( employeename, employeephonenumber, employeeemail, employeedob, start_of_employment, employeeid) VALUES( 'Lili Loca', 0893878358, 'lil@burgershack.com',date '1999-05-17',date '2020-07-21', 8465782);
INSERT INTO employee( employeename, employeephonenumber, employeeemail, employeedob, start_of_employment, employeeid) VALUES( 'Babe Ruth',089335964, 'babe@burgershack.com',date '2002-02-22',date '2019-07-02', 8467895);
INSERT INTO employee( employeename, employeephonenumber, employeeemail, employeedob, start_of_employment, employeeid) VALUES( 'Helen Rota',0891578943, 'helen@burgershack.com',date '1997-02-15',date '2020-03-02', 8461579);
INSERT INTO employee( employeename, employeephonenumber, employeeemail, employeedob, start_of_employment, employeeid) VALUES( 'Lucky Mayers',0893942068, 'May@burgershack.com',date '2000-07-19',date '2010-09-04', 8495876);
INSERT INTO employee( employeename, employeephonenumber, employeeemail, employeedob, start_of_employment, employeeid) VALUES( 'Ben Barnes', 0848598562, 'Ben@burgershack.com',date '2001-02-23',date '2020-03-22', 8466981);

-- INSERTING INTO RESTAURANT -- 
INSERT INTO restaurant( restaurantid, restaddress, restphonenumber) VALUES( 1234567,'15 laurel road', 0881457854);
INSERT INTO restaurant( restaurantid, restaddress, restphonenumber) VALUES( 1234568,'1 orchard road', 0885837854);
INSERT INTO restaurant( restaurantid, restaddress, restphonenumber) VALUES( 1234569,'14 green park', 0881454934);
INSERT INTO restaurant( restaurantid, restaddress, restphonenumber) VALUES( 1234570,'12 naas road', 0829657854);
INSERT INTO restaurant( restaurantid, restaddress, restphonenumber) VALUES( 1234571,'13 jiggy avenue', 0883967854);
INSERT INTO restaurant( restaurantid, restaddress, restphonenumber) VALUES( 1234572,'17 bannana road', 0881459674);

-- INSERTING INTO TABLE --  
INSERT INTO "Table"( tableid, tabletype, tablelocation, restaddress, restaurant_restaurantid) VALUES( 2468356, 2, 'Window','15 laurel road', 0881457854);
INSERT INTO "Table"( tableid, tabletype, tablelocation, restaddress, restaurant_restaurantid) VALUES( 2468356, 4, 'Interior' ,'1 orchard road', 0885837854);
INSERT INTO "Table"( tableid, tabletype, tablelocation, restaddress, restaurant_restaurantid) VALUES( 2468356, 2, 'Interior' ,'14 green park', 0881454934);
INSERT INTO "Table"( tableid, tabletype, tablelocation, restaddress, restaurant_restaurantid) VALUES( 2468356,6, 'Interior','12 naas road',  0829657854);
INSERT INTO "Table"( tableid, tabletype, tablelocation, restaddress, restaurant_restaurantid) VALUES( 2468356,4,'Window' ,'13 jiggy avenue', 0883967854);
INSERT INTO "Table"( tableid, tabletype, tablelocation, restaddress, restaurant_restaurantid) VALUES( 2468356,4,'Interior' ,'17 bannana road', 0881459674);

-- INSERTING INTO CUSTOMER --
INSERT INTO customer ( custid, custname, custaddress, custemail, custage) VALUES( 3444348, 'Graham Williams', '8 Friendship Lane', grahamwilliams@gmail.com, '21');
INSERT INTO customer ( custid, custname, custaddress, custemail, custage) VALUES( 376543, 'Alexia Price', '643 Dogwood Lane', alexiaprice@gmail.com, '27');
INSERT INTO customer ( custid, custname, custaddress, custemail, custage) VALUES( 433345, 'Allan Fernandez', '69 Capitol Avenue', allanfernandez@gmail.com, '37');
INSERT INTO customer ( custid, custname, custaddress, custemail, custage) VALUES( 8787778, 'Victor Novak', '230 Confederate Drive', victornovak@gmail.com, '29');
INSERT INTO customer ( custid, custname, custaddress, custemail, custage) VALUES( 9900999, 'Maeve Dixon', '41 Elliot Avenue', maevedixon@gmail.com, '19');
INSERT INTO customer ( custid, custname, custaddress, custemail, custage) VALUES( 3333333, 'Samir Ferrell', '59 Blane Street', samirferrell@gmail.com, '24');
COMMIT;

UPDATE booking
    SET bookingpeople = '4'
    WHERE bookingid = 1111111;
    
SELECT  bookingid, bookinglength,
CASE
    WHEN bookinglength > '02:00:00' THEN 'The table cannot be booked for longer then two hours '
    ELSE 'The table is booked for the correct amount of time'
END AS bookinglengthText
FROM booking;
    
SELECT contacttracing.contacttracingname, "Table".restaurant_restaurantid
FROM contacttracing
INNER JOIN "Table" ON contacttracing.tableid = "Table".tableid
ORDER BY tableid;

SELECT restaurant.restaurantid, "Table".restaurant_restaurantid
FROM "Table"
LEFT JOIN restaurant ON restaurant.restaurantid = "Table".restaurant_restaurantid;

SELECT customer.custname, contacttracing.contacttracingname
FROM customer
RIGHT JOIN contacttracing ON customer.custname = contacttracing.conntacttracingname;

SELECT custname FROM customer
UNION
SELECT employeename FROM employee;

SELECT custaddress FROM customer
INTERSECT
SELECT contacttracing FROM contacttracing;

CREATE VIEW interiortables AS
SELECT tableid, restaddress
FROM "Table"
WHERE tablelocation = 'Interior';
