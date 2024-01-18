
create database employ;

create database	Practise;

drop database Student;

use Practise;

create table student(
id int,
lead_id varchar(50),
Name varchar(50),
Birth_date date,
Phone varchar(50),
Age int,
Gender varchar(50),
City varchar(50)
);

Select * from student;


insert into	student (id, lead_id, Name,	Birth_date,	Phone,	Age,	Gender,	City)
values(1, "422549729","Raj","1993-01-04","9098992443",28,"Female","Gwalior");

insert into	student (id, lead_id, Name,	Birth_date,	Phone,	Age,	Gender,	City)
Values (2,'432221501','DILIP KUMAR SAW','1994-11-06','9098975616',23,'Female','Bhopal'),
(3,'426590670','GIANINDER MANGLA','1996-09-10','9098975850',25,'Female','Delhi'),
(4,'436249724','Rakesh Saha','1998-07-16','9098976084',27,'Female','Gwalior'),
(5,'443370990','Pinak','2000-05-20','9098976318',29,'Female','Gwalior'),
(6,'458741228','Malkeet Singh','2002-03-25','9098976552',26,'Male','Delhi'),
(7,'415502091','MANDEEP KAUR','2004-01-28','9098976786',23,'Male','Mumbai'),
(8,'418817294','Vicky','2001-10-19','9098977020',20,'Male','Mumbai'),
(9,'442518078','DORASWAMY NAIDU M V','1999-07-11','9098977254',17,'Female','Noida'),
(10,'444806818','Rehana','1997-04-01','9098977488',18,'Female','Noida'),
(11,'449560495','Sureshbhai','1994-12-22','9098977722',19,'Female','Mumbai'),
(12,'453496632','MOHAN LAL','1992-09-12','9098977956',20,'Female','Mumbai'),
(13,'424146899','ROBIN KUMAR','1990-06-04','9098978190',21,'Male','Noida'),
(14,'434340816','MS SAHEED FILLING STATION','1988-02-24','9098978424',25,'Male','Bhopal'),
(15,'431095890','REETI SHARMA','1988-06-26','9098978658',29,'Male','Gwalior'),
(16,'437537527','Parameshwaran','1988-10-27','9098978892',33,'Female','Gwalior'),
(17,'457099871','Sarfaraj','1989-02-27','9098979126',32,'Female','Gwalior'),
(18,'463754460','Sunil Ram Rao','1989-06-30','9098979360',31,'Female','Mumbai');


Use practise;
create table st_product(
id int,
lead_id varchar(50),
Insurer_Name Varchar(50),
Product varchar(50),
APE int,
RTO varchar(15),
Status varchar(50),
RegistrationDate date

);

Select * from st_product;

insert into st_product values (1,'422549729','DIGIT General Insurance','Two Wheeler',887,'UP14','Sale Complete','2017-10-01');
insert into st_product values (2,'432221501','Shriram General ','Car',13417,'MH46','Sale Complete','2017-03-07');
insert into st_product values (3,'426590670','DIGIT General Insurance','Two Wheeler',887,'HR26','Booked','2017-12-01');
insert into st_product values (4,'436249724','Cholamandalam','Two Wheeler',1408,'KA53','Sale Complete','2018-02-17');
insert into st_product values (5,'443370990','Royal Sundaram ','Car',3182,'MH12','Sale Complete','2012-09-06');
insert into st_product values (6,'458741228','DIGIT General Insurance','Two Wheeler',887,'JH09','Sale Complete','2018-09-04');
insert into st_product values (7,'415502091','Cholamandalam','Two Wheeler',481,'TS03','Sale Complete','2018-10-27');
insert into st_product values (8,'418817294','Bajaj Allianz','Two Wheeler',1509,'TN03','Sale Complete','2016-05-03');
insert into st_product values (9,'442518078','Iffco Tokio General ','Home Insurance',242,'NULL','Booked','1900-01-01');
insert into st_product values (10,'444806818','Bajaj Allianz','Two Wheeler',993,'KA06','Sale Complete','2014-03-01');
insert into st_product values (11,'449560495','Edelweiss General','Commercial Vehicle',9297,'DL01','Booked','2015-01-06');
insert into st_product values (12,'453496632','Niva Bupa Health Insurance','Other Insurance',31152,'NULL','Soft Copy Received','1900-01-01');
insert into st_product values (13,'424146899','Go Digit General ','Other Insurance',112100,'NULL','Booked','1900-01-01');
insert into st_product values (14,'434340816','Oriental','Car',5498,'UP78','Sale Complete','2018-05-16');
insert into st_product values (15,'431095890','Bajaj Allianz','Two Wheeler',1349,'MH43','Sale Complete','2018-02-01');
insert into st_product values (16,'437537527','National Insurance Company Ltd','Other Insurance',36185,'NULL','Soft Copy Received','1900-01-01');
insert into st_product values (17,'457099871','Bajaj Allianz','Two Wheeler',1032,'KA02','Sale Complete','2017-09-14');
insert into st_product values (18,'463754460','Royal Sundaram','Car',2504,'RJ13','Sale Complete','2020-01-23');


use practise;

create table parents(
id int not null unique,
lead_id varchar(50) not null unique,
Parents_Name varchar(100) not null,
Salary int not null,
Age int check (age >= 35),
Job varchar(50) not null,
IFSCCode varchar(50) not null unique,
Country varchar(50) default 'India'

);

select * from parents;

insert into parents values (1,'422549729','Ejaj Malik',21290,54,'Private','HDFC422549729','');
insert into parents values (2,'432221501','Manish Kumar',51569,59,'Gov','HDFC432221501','');
insert into parents values (3,'426590670','SHIYAS P J',23708,37,'Semi gov','HDFC426590670','');
insert into parents values (4,'436249724','SELVAKUMAR G',43575,51,'Private','HDFC436249724','');
insert into parents values (5,'443370990','Tek Chand',20692,60,'Private','HDFC443370990','');
insert into parents values (6,'458741228','HINDUSTAN AERONAUTICS LIMITED',37565,45,'Private','HDFC458741228','');
insert into parents values (7,'415502091','Bheru Singh Rathore',24656,54,'Gov','HDFC415502091','');
insert into parents values (8,'418817294','BHAGWAN SAHAY YADAV',33356,47,'Private','HDFC418817294','');
insert into parents values (9,'442518078','SANJAY DESHMUKH',22495,56,'Private','HDFC442518078','');
insert into parents values (10,'444806818','AGRAGRIMAS CHEMICAL',36873,48,'Gov','HDFC444806818','');
insert into parents values (11,'449560495','M/S MAMTA KHAL INDUSTRY',43732,52,'Semi gov','HDFC449560495','');
insert into parents values (12,'453496632','Umesh kisan rakte',43558,53,'Semi gov','HDFC453496632','');
insert into parents values (13,'424146899','S and D INTERNATIONAL',37072,54,'Gov','HDFC424146899','');
insert into parents values (14,'434340816','Sanjiv Ranjan Jha',29037,49,'Private','HDFC434340816','');
insert into parents values (15,'431095890','Sahjad Khan',20800,52,'Private','HDFC431095890','');
insert into parents values (16,'437537527','Munesh Singh',27462,39,'Gov','HDFC437537527','');
insert into parents values (17,'457099871','JASBIR SINGH',40148,36,'Private','HDFC457099871','');
insert into parents values (18,'463754460','HEMRAJ SAINI',35990,53,'Semi gov','HDFC463754460','');

Select * from student;

Select lead_id, Birth_date, City from student;

select lead_id as emp_id, Birth_date as BdY, City as dist from student;

select lead_id as "Lead ID", Birth_date as "Birth Date" from student;

Select * from student
Where City = "Gwalior";

Select * from student
Where Age >= 28;

select lead_id as emp_id, Name, Age from student
Where Gender <> 'Female';

Select id, lead_id as emp_id, Phone, city from student
Where age >= 25 and age <= 30;

Select * from student
Where age = 25 or age = 23;

select * from student
Where age >= 28 and City = "Mumbai";

Select * from student
Where Age >= 24 and Gender ="Male" and City ="Gwalior";

Select * from student
Where age >= 30 or City ="Noida";

Select * from student
Where (city = "Gwalior" or city = "Mumbai") and Gender = "Male";

Select * from student
Where not (City = "Gwalior" or city = "Mumbai");


Select * from student
Where age = 21 or age = 23;

select * from student
Where age in (21,23);

select * from student
Where age not in (21,23);

Select * from student
Where city = "Gwalior" or city = "Delhi";

Select * from student
Where City in ("Gwalior","Delhi");

select * from student
Where city not in ("Gwalior","Delhi");

Select * from student
Where id in (1,2,3);

Select * from student
Where age >= 20 and age <= 25;

Select * from student
Where age between 20 and 25;

Select * from student
Where age not between 21 and 25;

Select * from student
Where id not between 2 and 5;

Select * from student
Where Name not between "b" and "I";

select * from student
Where Name between "Anup" and "Kamal";

Select * from student
Where Birth_date between "1992-01-01" and "1994-01-01";

Select * from student
Where Birth_date not between "1994-01-01" and "1998-01-01";

--------------Like Operator-------------------

Select * from student
Where Name like "R%";

Select * from student
Where Name like "P%n";

Select * from student
Where Name like "_a%";

Select * from student
Where Name like "%an%";

Select * from st_product
Where Insurer_Name like "%la%" or Insurer_Name like "%ja%";

Select * from st_product
Where Insurer_Name not like '%aj%';

Select * from student
Where  Phone not like '%50';

Select * from student
order by Name Desc;

Select * from student
Where City = "Gwalior"
order by Name desc;

Select * from student
Where Age >= 20 and (City ="Gwaliot" or city = "Mumbai")
order by Name desc;

Select * from student
order by Name, City;

Select distinct City from student;
Select distinct age from student;
Select distinct Insurer_Name from st_product
order by Insurer_Name;

Select * from student
limit 3;

select * from st_product
Where product = "Two Wheeler"
order by Insurer_Name desc
limit 5;


----- Create_another _Table_

Create table Commission(
id int Not null unique auto_increment,
lead_id varchar(50) not null,
Date date not null,
Sales_Rep Varchar(50) Not null,
Shift varchar(50) not null,
Cost_Price int,
Selling_Price int,
Profit_Percentage int,
Commission int,
Profit int,
Weekday int,
primary key (id)
);

Select * from Commission;

Insert into Commission Values (2,'432221501','2022-07-01','Jacob','Day',1095.5,1250.75,0.1417,6.25,155.25,5);
Insert into Commission Values (3,'426590670','2022-07-04','Ben','Night',1120.94,1295,0.1553,6.48,174.06,1);
Insert into Commission Values (4,'436249724','2022-07-04','Jacob','Day',1509.73,1687.75,0.1179,0,178.02,1);
Insert into Commission Values (5,'443370990','2022-07-05','Ben','Day',1235.33,1412.25,0.1432,7.06,176.92,2);
Insert into Commission Values (6,'458741228','2022-07-05','Jacob','Night',881.93,962,0.0908,0,80.07,2);
Insert into Commission Values (7,'415502091','2022-07-06','Ben','Night',1075.7,1142.75,0.0623,0,67.05,3);
Insert into Commission Values (8,'418817294','2022-07-06','Jacob','Day',714.58,800.5,0.1202,4,85.92,3);
Insert into Commission Values (9,'442518078','2022-07-07','Ben','Day',1299.11,1360,0.0469,0,60.89,4);
Insert into Commission Values (10,'444806818','2022-07-07','Jacob','Night',1087.48,1268.5,0.1665,6.34,181.02,4);
Insert into Commission Values (11,'449560495','2022-07-08','Ben','Night',803.79,907.75,0.1293,4.54,103.96,5);
Insert into Commission Values (12,'453496632','2022-07-08','Jacob','Day',1113.73,1278.75,0.1482,6.39,165.02,5);
Insert into Commission Values (13,'424146899','2022-07-11','Ben','Day',843.16,965.25,0.1448,4.83,122.09,1);
Insert into Commission Values (14,'434340816','2022-07-11','Jacob','Night',1552.52,1717.5,0.1063,0,164.98,1);
Insert into Commission Values (15,'431095890','2022-07-12','Ben','Night',1382.27,1550.25,0.1215,7.75,167.98,2);
Insert into Commission Values (16,'437537527','2022-07-12','Jacob','Day',1515.76,1622.75,0.0706,0,106.99,2);
Insert into Commission Values (17,'457099871','2022-07-13','Ben','Day',1264.56,1328.5,0.0506,0,63.94,3);
Insert into Commission Values (18,'463754460','2022-07-13','Jacob','Night',1251.98,1402,0.1198,0,150.02,3);
Insert into Commission Values (19,'422549729','2022-07-14','Ben','Night',986.11,1054,0.0688,0,67.89,4);
Insert into Commission Values (20,'432221501','2022-07-14','Jacob','Day',1514.2,1571.25,0.0377,0,57.05,4);
Insert into Commission Values (21,'426590670','2022-07-15','Ben','Day',1318.85,1454.75,0.103,0,135.9,5);
Insert into Commission Values (22,'436249724','2022-07-15','Jacob','Night',1495.11,1655,0.1069,0,159.89,5);
Insert into Commission Values (23,'443370990','2022-07-18','Ben','Night',1187.7,1297.75,0.0927,0,110.05,1);
Insert into Commission Values (24,'458741228','2022-07-18','Jacob','Day',1150.74,1225.75,0.0652,0,75.01,1);
Insert into Commission Values (25,'415502091','2022-07-19','Ben','Day',1562.68,1736.75,0.1114,0,174.07,2);
Insert into Commission Values (26,'418817294','2022-07-19','Jacob','Night',1514.13,1620.25,0.0701,0,106.12,2);
Insert into Commission Values (27,'442518078','2022-07-20','Ben','Night',778.27,930.25,0.1953,4.65,151.98,3);
Insert into Commission Values (28,'444806818','2022-07-20','Jacob','Day',1270.66,1334.75,0.0504,0,64.09,3);
Insert into Commission Values (29,'463754460','2022-07-21','Ben','Day',766.72,841.75,0.0979,0,75.03,4);
Insert into Commission Values (30,'453496632','2022-07-21','Jacob','Night',1041.13,1157.25,0.1115,0,116.12,4);
Insert into Commission Values (31,'424146899','2022-07-22','Ben','Night',1218.08,1344,0.1034,0,125.92,5);
Insert into Commission Values (32,'434340816','2022-07-22','Jacob','Day',1016.36,1108.25,0.0904,0,91.89,5);
Insert into Commission Values (33,'431095890','2022-07-25','Ben','Day',1576.91,1683,0.0673,0,106.09,1);
Insert into Commission Values (34,'437537527','2022-07-25','Jacob','Night',870.02,997,0.146,4.99,126.98,1);
Insert into Commission Values (35,'457099871','2022-07-26','Ben','Night',1145.26,1344.25,0.1738,6.72,198.99,2);
Insert into Commission Values (36,'463754460','2022-07-26','Jacob','Day',1313.05,1504,0.1454,7.52,190.95,2);
Insert into Commission Values (37,'422549729','2022-07-27','Ben','Day',833.49,906.5,0.0876,0,73.01,3);
Insert into Commission Values (38,'432221501','2022-07-27','Jacob','Night',1578.85,1711.75,0.0842,0,132.9,3);
Insert into Commission Values (39,'426590670','2022-07-28','Ben','Night',1314.78,1371.75,0.0433,0,56.97,4);
Insert into Commission Values (40,'436249724','2022-07-28','Jacob','Day',972.81,1139.75,0.1716,5.7,166.94,4);
Insert into Commission Values (41,'443370990','2022-07-29','Ben','Day',1551.16,1721.25,0.1097,0,170.09,5);
Insert into Commission Values (42,'458741228','2022-07-29','Jacob','Night',1366.59,1418.5,0.038,0,51.91,5);
Insert into Commission Values (43,'415502091','2022-08-01','Ben','Night',1466.66,1624.75,0.1078,0,158.09,1);
Insert into Commission Values (44,'418817294','2022-08-01','Jacob','Day',1594.15,1682.25,0.0553,0,88.1,1);
Insert into Commission Values (45,'442518078','2022-08-02','Ben','Night',1580.98,1679,0.062,0,98.02,2);
Insert into Commission Values (46,'444806818','2022-08-02','Jacob','Day',916.97,1025,0.1178,0,108.03,2);
Insert into Commission Values (47,'449560495','2022-08-03','Ben','Night',726.12,838,0.1541,4.19,111.88,3);
Insert into Commission Values (48,'453496632','2022-08-03','Jacob','Day',1461.44,1599.5,0.0945,0,138.06,3);
Insert into Commission Values (49,'424146899','2022-08-04','Ben','Day',1176.26,1263.25,0.074,0,86.99,4);
Insert into Commission Values (50,'434340816','2022-08-04','Jacob','Night',825.12,1004,0.2168,15.06,178.88,4);
Insert into Commission Values (51,'431095890','2022-08-05','Ben','Night',1034.97,1091,0.0541,0,56.03,5);
Insert into Commission Values (52,'437537527','2022-08-05','Jacob','Day',939.94,1045,0.1118,0,105.06,5);
Insert into Commission Values (53,'457099871','2022-08-08','Ben','Day',1429.63,1570.75,0.0987,0,141.12,1);
Insert into Commission Values (54,'463754460','2022-08-08','Jacob','Night',1009.06,1189,0.1783,5.95,179.94,1);
Insert into Commission Values (55,'422549729','2022-08-09','Ben','Night',974.45,1152.5,0.1827,5.76,178.05,2);
Insert into Commission Values (56,'432221501','2022-08-09','Jacob','Day',1511.87,1688.75,0.117,0,176.88,2);
Insert into Commission Values (57,'426590670','2022-08-10','Ben','Night',1103.76,1256.75,0.1386,6.28,152.99,3);
Insert into Commission Values (58,'436249724','2022-08-10','Jacob','Day',809.07,930,0.1495,4.65,120.93,3);
Insert into Commission Values (59,'443370990','2022-08-11','Ben','Night',1438.4,1560.5,0.0849,0,122.1,4);
Insert into Commission Values (60,'458741228','2022-08-11','Jacob','Day',1472.96,1637,0.1114,0,164.04,4);
Insert into Commission Values (61,'415502091','2022-08-12','Ben','Day',1556.29,1742.25,0.1195,0,185.96,5);
Insert into Commission Values (62,'418817294','2022-08-12','Jacob','Night',960.13,1088.25,0.1334,5.44,128.12,5);
Insert into Commission Values (63,'442518078','2022-08-15','Ben','Night',1520.43,1594.5,0.0487,0,74.07,1);
Insert into Commission Values (64,'444806818','2022-08-15','Jacob','Day',1195.05,1263,0.0569,0,67.95,1);
Insert into Commission Values (65,'463754460','2022-08-16','Ben','Night',1357.83,1518.75,0.1185,0,160.92,2);
Insert into Commission Values (66,'453496632','2022-08-16','Jacob','Day',1440.38,1498.5,0.0404,0,58.12,2);
Insert into Commission Values (67,'424146899','2022-08-17','Ben','Night',801.34,913.25,0.1397,4.57,111.91,3);
Insert into Commission Values (68,'434340816','2022-08-17','Jacob','Day',1001.99,1097,0.0948,0,95.01,3);
Insert into Commission Values (69,'431095890','2022-08-18','Ben','Day',1121.86,1191.75,0.0623,0,69.89,4);
Insert into Commission Values (70,'437537527','2022-08-18','Jacob','Night',776.22,961.25,0.2384,14.42,185.03,4);
Insert into Commission Values (71,'457099871','2022-08-19','Ben','Night',779.66,900.75,0.1553,4.5,121.09,5);
Insert into Commission Values (72,'463754460','2022-08-19','Jacob','Day',850.14,932.25,0.0966,0,82.11,5);
Insert into Commission Values (73,'437537527','2022-08-22','Ben','Day',896.25,1008.25,0.125,5.04,112,1);
Insert into Commission Values (74,'457099871','2022-08-22','Jacob','Night',1051,1133,0.078,0,82,1);
Insert into Commission Values (75,'463754460','2022-08-23','Ben','Night',1385.5,1504.5,0.0859,0,119,2);
Insert into Commission Values (76,'422549729','2022-08-23','Jacob','Day',1075.76,1262.75,0.1738,6.31,186.99,2);
Insert into Commission Values (77,'432221501','2022-08-24','Ben','Day',896.05,957,0.068,0,60.95,3);
Insert into Commission Values (78,'426590670','2022-08-24','Jacob','Night',843.34,1039.25,0.2323,15.59,195.91,3);
Insert into Commission Values (79,'436249724','2022-08-25','Ben','Night',1211.66,1325.75,0.0942,0,114.09,4);
Insert into Commission Values (80,'443370990','2022-08-25','Jacob','Day',1357.2,1463.25,0.0781,0,106.05,4);
Insert into Commission Values (81,'458741228','2022-08-26','Ben','Night',940.87,1027.75,0.0923,0,86.88,5);
Insert into Commission Values (82,'415502091','2022-08-26','Jacob','Day',1274.05,1455,0.142,7.28,180.95,5);
Insert into Commission Values (83,'418817294','2022-08-29','Ben','Night',1179.06,1376,0.167,6.88,196.94,1);
Insert into Commission Values (84,'442518078','2022-08-29','Jacob','Day',774.2,946.25,0.2222,14.19,172.05,1);
Insert into Commission Values (85,'444806818','2022-08-30','Ben','Day',1350.48,1509.5,0.1178,0,159.02,2);
Insert into Commission Values (86,'463754460','2022-08-30','Jacob','Night',1053.37,1136.25,0.0787,0,82.88,2);
Insert into Commission Values (87,'453496632','2022-08-31','Ben','Night',1161.92,1237,0.0646,0,75.08,3);
Insert into Commission Values (88,'424146899','2022-08-31','Jacob','Day',951.93,1136,0.1934,5.68,184.07,3);



