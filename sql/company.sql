create database company;
use company;
create table employee(
id int primary key,
name varchar(50),
salary decimal);
alter table employee
add column department varchar(50);
select*from employee;
insert into employee(
id,name,department,salary)
values(
101,"jashwant","IT",100000),
(102,"Shabari","Advertment",70000),
(103,"chanti","IT",80000),
(104,"Dinesh","Fashon",50000),
(105,"ssv","Fashon",60000),
(106,"vishnu","HR",75000),
(107,"ram","Advertment",45000),
(108,"rahul","IT",30000);

select*from employee
where salary>60000;

select*from employee
where department="Movie";

select max(salary) from employee
where salary < (select  max(salary) from employee);

select department ,avg(salary) from employee
group by department
having avg(salary) < 60000;

select *from employee
where salary= (select min(salary) from employee);

select * from employee
where salary between 50000  and 80000;

select department,sum(salary) as total from employee
group by department
order by total desc
limit 1;

select *from employee;
