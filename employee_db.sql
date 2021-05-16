CREATE DATABASE if not exists employee_db;
SHOW DATABASES;
use employee_db;

create table if not exists department(
dept_id integer primary key,
dept_name varchar(20),
dept_location varchar(15)
);

create table if not exists employees(
emp_id integer primary key,
emp_name varchar(15),
job_name varchar(10),
manager_id integer,
hire_date date,
salary decimal(10,2),
comisssion decimal(10,2),
dept_id integer,
FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

#jr s/w engg-  0-2yrs   300000-500000
#sr s/w engg - 3-5 yrs  500000-1000000

create table salary_grade(
grade integer primary key,
min_salary integer,
max_salary integer
);

insert into department
values (1001 ,'FINANCE',' SYDNEY'),
   (2001 ,' AUDIT',' MELBOURNE'),
   (3001 ,' MARKETING  ',' PERTH'),
   (4001 ,' PRODUCTION ',' BRISBANE');

select * from employees;

select * from department;

#employee table  
insert into employees(emp_id,emp_name ,job_name  , manager_id , hire_date  , salary  , comisssion , dept_id)
values(68319 ,'KAYLING','PRESIDENT',null,'1991-11-18',6000.00,null,1001),
  (66928 ,'BLAZE','MANAGER',68319,' 1991-05-01',2750.00 ,null,3001),
  (67832 ,'CLARE','MANAGER',68319,'1991-06-09',2550.00,null,1001),
  (65646 ,'JONAS','MANAGER',68319,'1991-04-02',2957.00,null,2001),
  (67858 ,'SCARLET','ANALYST',65646,'1997-04-19',3100.00,null,2001),
  (69062 ,'FRANK','ANALYST',65646,'1991-12-03',3100.00,null,2001),
  (63679 ,'SANDRINE','CLERK',69062,'1990-12-18',900.00 ,null,2001),
  (64989 ,'ADELYN','SALESMAN',66928,'1991-02-20',1700.00 ,400.00,3001),
  (65271 ,'WADE','SALESMAN',66928,'1991-02-22',1350.00 ,600.00,3001),
  (66564 ,'MADDEN','SALESMAN',66928,'1991-09-28',1350.00 ,1500.00,3001),
  (68454 ,'TUCKER','SALESMAN',66928,'1991-09-08',1600.00 ,0.00,3001),
  (68736 ,'ADNRES','CLERK',67858,'1997-05-23',1200.00 ,null,2001),
  (69000 ,'JULIUS','CLERK',66928,'1991-12-03',1050.00 ,null,3001),
  (69324 ,'MARKER','CLERK',67832,'1992-01-23',1400.00 ,null,1001);

describe salary_grade;

insert into  salary_grade(grade , min_salary , max_salary)
values (1 ,     800 ,    1300),
     (2 ,    1301 ,    1500),
     (3 ,    1501 ,    2100),
     (4 ,    2101 ,    3100),
     (5 ,    3101 ,    9999);
     
     
