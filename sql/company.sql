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
101,"jashwant","Girlhostel",100000),
(102,"Shabari","True Love",70000),
(103,"chanti","Girlhostel",80000),
(104,"Dinesh","Movie",50000),
(105,"ssv","Movie",60000),
(106,"vishnu","Study",75000),
(107,"ram","True Love",45000),
(108,"rahul","Movie",30000);

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