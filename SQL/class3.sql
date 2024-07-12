create database karthikeya;
use karthikeya;
create table study(
	Age INT primary key,
    Grade Varchar(50) not null
);
insert into study(Age,Grade)
values
(19,"avg"),
(5,"Excelllent");


select * from study;
drop table if exists study;
create table study(
	Age INT auto_increment primary key,
    Grade Varchar(50) not null
);
ALTER TABLE study AUTO_INCREMENT = 10;

insert into study(Grade)
value("good"),
("bad"),
("average");

CREATE TABLE faviorites(
    customer_id INT,
    product_id INT,
    favorite_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(customer_id, product_id)
);
drop table if exists faviorites;

insert into faviorites
values(1,1,CURRENT_TIMESTAMP);

select * from faviorites;

insert into faviorites
values(1,2,CURRENT_TIMESTAMP);

use karthikeya;

create table student
(id int primary key,
name varchar(50));

insert into student(id,name)
values(1,"karthikeya");

select * from student;


create table class_room
(student_id int primary key,
name varchar(50));

create table exams(
marks int auto_increment primary key,
exam_name varchar(50),
student_id  int,
constraint bk_category foreign key (student_id)
 references class_room(student_id)
 on update cascade
 on delete	cascade);
 
 drop table class_room;
 drop table exams;


select * from class_room;
select * from exams;

insert into class_room(student_id,name)
value (1,"karthikeya"), (2,"karthi"),(3,"karthisldfh");

insert into exams(exam_name,student_id)
value ("english",1),("hindi",2),("Telugu",3)
;

update class_room
set student_id=100
where  student_id=1;


