------------------1.Use SELECT * and specific columns
--------------2.Apply WHERE, AND, OR, LIKE, BETWEEN
----------------3.Sort with ORDER BY
create table M_Hotel(hotel_id int identity(1,1) ,hotel_name varchar(50) unique ,
hotel_cutomername varchar(50) not null ,cust_phn int , food_amount varchar(40) check(food_amount<15000),
hotel_location varchar(40) default('chennai'))

insert into M_Hotel values('SRM Hotel','Banglore','Mangalakshmi',777777777,'10000')
insert into M_Hotel values('BBB Hotel','Mumbai','Santa',666666666,'12000')
insert into M_Hotel values('KFC Resort','Chennai','Bala',555555555,'7000')
insert into M_Hotel values('Dhaba Hotel','Salem','Venkat',99999999,'3000')
insert into M_Hotel values('Chetty nadu','Kerala','Dinesh',88888888,'5000')
insert into M_Hotel values('3 star Hotel','Vellore','Sanmugam',11111111,'4500')
insert into M_Hotel values('5 star Hotel','Banglore','Vasanth',45678898,'2300')
insert into M_Hotel values('Bombay Resort','Shruthi',2333332,'6790')
insert into M_Hotel values('RRR Hotel','Kanipriya',4545454,'5647')
insert into M_Hotel values('Lala Resort','Thirisur','Sivagami',6767676,'2345')
insert into M_Hotel values('Hotel Hills','Yelagiri','Sanjana',8787878,'4700')
insert into M_Hotel values('Govaa Hotel','Korakpur','Revathi',9898988,'6789')
insert into M_Hotel values('Naayakarr Hotel','Hydrabad','fouziya',1232111,'3000')
insert into M_Hotel values('Naani Hotel','Banglore','	Devi',1232111,'3000')
insert into M_Hotel values('PCT Hotel','Hydrabad','francis',1232111,'3000')
insert into M_Hotel values('Holy cross Hotel','Banglore','Gokul',1232111,'3000')
insert into M_Hotel values('Naayakarr Hotel','Hydrabad','fouziya',1232111,'300')
insert into M_Hotel values('Naani Hotel','Banglore','	Devi',1232111,'600')


select * from M_Hotel
---------------	USED WHERE CONDITION ,AND OPERATORS ----by using this we can delete two rows
delete from M_Hotel where hotel_name='RRR hotel'

-----------AND Operators------
select * from M_Hotel where hotel_location='Banglore' AND (food_amount)<='700'
-------------OR operator--------
select * from M_Hotel where hotel_location='Banglore' OR food_amount>='3000'
-------------BETWEEN OPERATOR----------
select * from M_Hotel where food_amount between '15000' and '900'

--------------------TOP--------
select top 5 * from M_Hotel order by food_amount desc

--------------LIKE Operator-----------------
--------STARTS WITH 'K'
select * from M_Hotel where hotel_name like 'k%'
------ENDS WITH 'L'
select * from M_Hotel where hotel_name like '%l'
------------STARTS WITH D & ENDS WITH L------
select * from M_Hotel where hotel_name like 'd%l'

