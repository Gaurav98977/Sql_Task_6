
--Task No- 6 

--Find and Download CSV Data: Get three publicly available CSV datasets with at least 1000 rows each.
--Ensure Data Structure: Table 1 and Table 2 should each have 3 categorical and 3 numerical columns. 
--Table 3 should have 5 categorical and 4 numerical columns.
--Perform SQL Operations: Demonstrate JOIN, GROUP BY, HAVING, and UNION operations.
--Example Data : Using files weather_data.csv, salary.csv, and console.csv with appropriate columns to meet the criteria.

--Solution

select id ,generation,time_period,primary_console,game_media,price from console as c
select id,first_name,last_name,designation,age,salary,unit from salary as s

--Inner Join--
select c.id ,c.generation,c.time_period,c.primary_console,c.game_media,c.price,
s.id,s.first_name,s.last_name,s.designation,s.age,s.salary,s.unit from console as c
inner join salary as s
on c.id=s.id

--Left Join--
select c.id ,c.generation,c.time_period,c.primary_console,c.game_media,c.price,
s.id,s.first_name,s.last_name,s.designation,s.age,s.salary,s.unit from console as c
left join salary as s
on c.id=s.id

--Right Join--
select c.id ,c.generation,c.time_period,c.primary_console,c.game_media,c.price,
s.id,s.first_name,s.last_name,s.designation,s.age,s.salary,s.unit from console as c
Right join salary as s
on c.id=s.id

--Full Join--
select c.id ,c.generation,c.time_period,c.primary_console,c.game_media,c.price,
s.id,s.first_name,s.last_name,s.designation,s.age,s.salary,s.unit from console as c
Full join salary as s
on c.id=s.id
	
--Group By--
select c.id ,c.price,
s.id,avg(s.age),sum(s.salary)from console as c
inner join salary as s
on c.id=s.id
group by c.id,s.id,s.age,s.salary

--Having--
select c.id ,c.generation,
s.id,s.first_name,s.last_name,s.designation,s.age,s.salary,s.unit from console as c
inner join salary as s
on c.id=s.id
group by c.id,s.id,s.age,s.salary
having salary>50000

--Mutli Join--

select id ,generation,time_period,primary_console,game_media,price from console as c
select id,first_name,last_name,designation,age,salary,unit from salary as s
select * from weather_data
select id,temperature,humidity,is_cloud,atmosphere,season,location from weather_data 

select c.id ,c.generation,c.time_period,c.primary_console,c.game_media,c.price,
s.id,s.first_name,s.last_name,s.designation,s.age,s.salary,s.unit,
w.temperature,w.humidity,w.is_cloud,w.atmosphere,w.season from console as c
inner join salary as s
on c.id=s.id
inner join weather_data as w
on c.id=w.id
where age>30

--Union--

select*from salary
select*from weather_data
	
select first_name,last_name,designation
from salary

union

select weather_type,location,season from weather_data


--union all--
	
select first_name,last_name,designation
from salary

union all

select weather_type,location,season from weather_data