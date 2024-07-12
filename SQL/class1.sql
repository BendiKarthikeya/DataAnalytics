create database healthcare;

drop database healthcare;

create database if not exists healthcare;

use healthcare;

create table test
(id int,
	name varchar(50));

create table hospitals
(
	hospital_code	int,
	hospital_name	varchar(50), 
	location		varchar(200), 
	contact_no		bigint
);

create table patient(
patient_name varchar(50),
patient_age int,
contact_no bigint
) ;

create table doctor(
doctor_name varchar(50),
doctor_id int,
doctor_salary bigint,
doctor_qualification varchar(100)
);

create table `medical record`(
Precord_id int,
Data_of_Examination date,
problem varchar(100)
);



create table nurse(
nurse_name varchar(50),
nurse_id int,
nurse_salary bigint,
nurse_qualification varchar(100)
);

