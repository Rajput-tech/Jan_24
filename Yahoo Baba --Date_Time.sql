------------- Arithmatic_function----------------
Select 5 + 6 as total;
Select ABS(5-6) as sub_total;
Select 5*6 as Multiple;

Use practise;
Select id, lead_id, Name, Birth_date, Phone, Age, Gender, (Age + 40) as New_record, Abs((Age-50)) as old_record from student;

Select Lead_id, Parents_Name, Salary, Age, Job, (Salary/Age) as New_Data, floor((Salary/Age)) as Floor_Checking,
Ceil((Salary/Age)) as Ceil_checking, Round((Salary/Age)) as Round_checking, Round(Sqrt(Age)) as Sq_root, pow(Age,2) as Power
from parents;

------------ String Function----------------

Select id, lead_id, Name, Upper(Name) as Name_upp, Birth_date, Gender, lower(Gender) as Lower_gen,City, ucase(City) as Ucase_city from student;
Select Lead_id, Name, character_length(Name) as Lenth_Name, Phone, Gender, Char_length(Gender) from student;
Select Lead_id, Name, length(Name) as Name_len from student;

Select lead_id, Name, Phone, Age, Gender, Concat(Name,"-", Gender,"-", City) as Remarks, City from student;
Select lead_id, Name, Age, Gender, City, concat_ws("-",Name,Gender,City) as Remarks from student;

Select Trim("        Pankaj       Rajput                 ") as Name;

Select lead_id, Name, Age, Gender, City, position("a" in Name) as Positon12 from student;
Select lead_id, Name, Age, Gender, City, instr(Name, " ") as Positon12 from student;

Select lead_id, Name, Age, Gender, locate("a",Name,6) from student;

Select lead_id, Name, Birth_date, Phone, Age, 
if(substring(Name,position(" " in Name))= "",Name,substring(Name,position(" " in Name)+1)) as Remarks
from student;

Select lead_id, Name, Phone, Age, substring(Name,3,5) as Remarks from student;

Select * from student;



