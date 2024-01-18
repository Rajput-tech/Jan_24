------- Date_Function-------------
Use practise;

Select lead_id, Birth_date, Age, current_date() as "today's_Date", sysdate() as System_Date, Now() as Now_date_time,
 Date("2019-10-15 09:30:21") as Date_of_sys,
 Date(sysdate()) as Date_only,
 Month(sysdate()) as Month_only,
 monthname(sysdate()) as Month_Name,
 Year(Birth_date) as year_1,
 quarter(Birth_date) as Qua_1,
 dayname(Birth_date) as Days_Name,
 dayofweek(Birth_date) as index_week,
 dayofyear(Birth_date) as Daysofyear,
 Week(Birth_date) as Wk
from student;

Select lead_id, Name, Birth_date, Age, extract(Month from Birth_date) as month_1,
extract(year from Birth_date)
 from student;