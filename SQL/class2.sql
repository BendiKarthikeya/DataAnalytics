insert into hospitals 
	values (3, 'Duke Hospital', 'Washington DC', 171944449999), (4, 'Bendi Hospital', 'India', 171944449999);
select * from hospitals;

insert into hospitals values (1, 'Fortis Hospital', 'Bangalore', 9900099000);
insert into hospitals values (2, 'Manipal Hospital', 'Manipal', 9900099222);
insert into hospitals values (3, 'Apollo Hospital', 'Mumbai', 9900099333);
insert into hospitals values (4, 'St. Francis Hospital', 'New York', 17194440001);
insert into hospitals values (4, 'Duke Hospital', 'New York', 17194440022);

insert into hospitals (hospital_code, hospital_name, location, contact_no)
	values (1, 'Apollo Hospital', 'Mumbai', 9900099000);
insert into hospitals (hospital_code, hospital_name, location)
	values (2, 'Fortis Hospital', 'New York');
insert into hospitals values (3, 'Duke Hospital', 'Washington DC', 171944449999);

drop table if exists Medical_Records;
create table Medical_Records
(
	id 						int, 
	problem					varchar(200),
	date_of_examination		date, 
	patient_id				varchar(15), 
	doctor_id				varchar(15)
);

-- update



insert into Medical_Records values (1, 'Food Poisoning', STR_TO_DATE('10-01-2023', '%d-%m-%Y'), 'P1', 'D2');
insert into Medical_Records values (2, 'Fever and Flu', STR_TO_DATE('11-01-2023', '%d-%m-%Y'), 'P6', 'D6');
insert into Medical_Records values (3, 'Back Spasm', STR_TO_DATE('15-01-2023', '%d-%m-%Y'), 'P7', 'D6');
insert into Medical_Records values (4, 'Headache', STR_TO_DATE('20-01-2023', '%d-%m-%Y'), 'P0', 'D7');



select * from Medical_Records;

update Medical_Records
set doctor_id="D7"
where patient_id="P1";

SET SQL_SAFE_UPDATES = 0;

alter table Medical_Records
add sl_no int;


alter table Medical_Records
	DROP COLUMN sl_no;

alter table  Medical_Records
	rename to medical_report;
    
select * from medical_report;

describe medical_report;

describe table medical_report;

alter table medical_report
modify problem varchar(20);

alter table medical_report
change problem disease varchar(200);

select * from Medical_Records;

TRUNCATE TABLE Medical_Records;

delete from Medical_Records
where patient_id="P1";
