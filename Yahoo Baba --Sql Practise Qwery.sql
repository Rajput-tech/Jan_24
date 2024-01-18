use practise;
Select * from student;

Select count(Name) as NOP from student;
Select count(*) as Count from student;

Select count(lead_id) as NOP from student
Where age >= 25;

Select count(distinct City) as Count_City from student;
Select count(distinct Age) as Age_count from student;

Select Max(Age) as Max_Value from student;

Select Min(Age) as Min_sal from student
Where City ="Gwalior";

Select * from student
Where City = "Gwalior";

Select sum(Ape) as Amount_1 from st_product
Where Product= "Two Wheeler";

Select avg(Ape) as Average from st_product;

use practise;
Select * from student;

update student
set phone  = "999459520"
Where id = 1;

commit;

update student
set Age = 33, Gender = "Male", City = "Delhi"
Where id = 1;

update student
set Age = 55, Gender = "Trans", City = "Pune", Name = "Pankja"
Where id in (2,3,4,5,6);

Select * from st_product;

update st_product
set Status = "Delete"
Where id in (2,3,4,7,9);

Select * from student;

Delete from student
Where id = 2;

Delete from student
Where id in (3,5,8);

Delete from Student
Where age >= 28;

Delete from Student
Where city = "Gwalior";

Delete from student;

rollback;

-------------------Inner Join-------------------
use practise;

Select * from student inner join st_product
on student.lead_id = st_product.lead_id;

select * from student st inner join st_product sp
on st.lead_id = sp.lead_id;

select st.lead_id, st.Name, st.Birth_date, st.Age, st.City, sp.insurer_Name, sp.product, sp.RTO, sp.Status from student st inner join st_product sp
on st.lead_id = sp.lead_id
Where st.Age >= 28
order by st.Name asc;

----------------Left Join and Right Join-------------------------

select st.lead_id, st.Name, st.Birth_date, st.Age, st.City, pa.Parents_Name, pa.Salary, pa.Job, pa.IFSCCode from student st left join parents pa
on st.lead_id = pa.lead_id
Where pa.salary >= 35000
order by Age;

----------- Cross Join---------------------

select * from Student cross join st_product

---------- Multiple Joins-------------------------

Select st.lead_id, st.Name, st.Birth_date, st.Age, sp.Insurer_Name, sp.Product, sp.APE, sp.RTo, sp.Status, pa.Parents_Name, pa.Job, pa.Salary
from student st inner join st_product sp
on st.lead_id = sp.lead_id
inner join parents pa
on st.lead_id = pa.lead_id
Where Age >= 28;

---------------------Group by and Having Clause--------------------

Select * from parents

Select job, sum(Salary) as J_Salary from parents
Group by Job
Having job  = "Private";

Select City, count(City) as C_count from student
Group by City;

Select * from parents;

select st.City, count(st.City) as C_Count, sum(pa.Salary) as C_Salary from student st inner join parents pa
on st.lead_id  = pa.lead_id
Where pa.Job in ("Gov", "Private")
group by city
Having C_Count >=3
order by C_Salary Desc;

---------------------- Sub_Qwery or Nested_Qwery----------------

Select * from student
Where lead_id in (Select lead_id from parents where Salary >= 40000);

Select * from student
Where lead_id in (Select lead_id from parents where job = "Private");

Select lead_id from parents where job ="Private";

Select * from parents;
Select * from student;

----------------------- Union or Union all-----------------



create table student_1(
id int,
lead_id varchar(50),
Name varchar(50),
Birth_date date,
Phone varchar(50),
Age int,
Gender varchar(50),
City varchar(50)
);

insert into	student_1 (id, lead_id, Name,	Birth_date,	Phone,	Age,	Gender,	City)
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

Select * from student_1;

Select * from student Where Age >= 28
union all
select * from student_1 where Gender = "Female"

------------------ Union all or union with sub_qwery---------------------------------

Select * from parents;
Select * from student;

Select * from student where lead_id in (Select lead_id from parents where job  = "Private")
union all
Select * from student_1 where lead_id in (Select lead_id from parents where Salary >= 40000);

------------------ union all or union with joins -----------------------

Select st.lead_id, st.Name, st.Birth_date, st.City, sp.Insurer_Name, sp.RTO, sp.Status from student st inner join st_product sp
on st.lead_id = sp.lead_id
Where sp.status = "Sale Complete"
union all
Select st1.lead_id, st1.Name, st1.Birth_date, st1.City, sp1.Insurer_Name, sp1.RTO, sp1.Status from student_1 st1 inner join st_product sp1
on st1.lead_id = sp1.lead_id
Where sp1.status = "Booked"

--------------If_and_Case Statements--------------------
-----------If_clause-----------

Select lead_id, Name, Birth_date, Phone, Age,
if(Age >= 26, "Pass","Fail") as Remarks
from student;

--------------- Case_clause--------------------------

Select * from parents;

Select lead_id, Parents_Name, Salary, Age, Job,
case
     when Age >= 50 and Age <= 60 then "Merit"
     When Age >= 40 and Age < 50 then "Ist Division"
     When Age >= 30 and Age < 40 then "2nd Division"
     When Age < 30 then "Fail"
     Else "Not Correct %"
End as Remarks     
from parents;

---------------- Update_With Case_Clause------------
Select * from student;

update student
set Age = ( Case 
	When id = 2 then 32
    When id = 3 then 52
    When id = 4 then 92 
End
)
Where id in (2,3,4);

rollback;

update student
set City = (Case
   When id = 1 then "Gwl"
   When id = 2 then "Bho"
   When id = 4 then "Pankaj"
   When id  = 7 then "Manju"
 End )


