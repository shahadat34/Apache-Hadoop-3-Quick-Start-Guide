create schema hadoop3book;
use hadoop3book;
create table if not exists students_p (student_id int,name String,gender String,dept_id int) stored as parquet;
create table if not exists students (student_id int,name String,gender String,dept_id int) row format delimited fields terminated by ',' stored as textfile;
load data local inpath '/home/labuser/hiveqry/students.csv' overwrite into table students;
insert into students_p select * from students;
select name, gender from students_p;
drop table students;
drop table students_p;
drop schema hadoop3book;
