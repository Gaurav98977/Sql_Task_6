--Table no 1

create table weather_data(

	id serial primary key,
	temperature float,
	humidity int,
	wind_speed float,
	precipitation float,
	is_cloud varchar,
	atmosphere float,
	uv_index float,
	season varchar,
	visibility float,
	location varchar,
	weather_type varchar
	
)

select * from weather_data

copy  weather_data (temperature ,
	humidity ,
	wind_speed ,
	precipitation ,
	is_cloud ,
	atmosphere ,
	uv_index ,
	season ,
	visibility ,
	location ,
	weather_type )
from 'C:\Program Files\PostgreSQL\16\backup\weather_classification_data.csv' DELIMITER ',' CSV HEADER;

select * from weather_data

--Table No 2

create table salary
(
	id serial primary key,
	first_name varchar,
	last_name varchar,
	sex varchar,
	Designation varchar,
	age int,
	salary int,
	unit varchar,
	leaves varchar,
	rating int,
	past_exp int
		
)


copy salary (first_name ,
	last_name ,
	sex ,
	Designation,
	age ,
	salary ,
	unit ,
	leaves ,
	rating ,
	past_exp )
from 'C:\Program Files\PostgreSQL\16\backup\Salary Prediction of Data Professions.csv' delimiter ',' csv header;

select *from salary

--Table No -3

create table console
(
	id serial primary key,
	Generation varchar,
	time_period varchar,
	primary_console varchar,
	release_year int,
	game_media varchar,
	price varchar
	
		
)
copy console(generation ,
	time_period ,
	primary_console ,
	release_year ,
	game_media ,
	price  )
from 'C:\Program Files\PostgreSQL\16\backup\Console Generation data-.csv' delimiter ',' csv header;

select *from console


