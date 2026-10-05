create database duplicatemails;
use duplicatemails;
create table mails(
id int primary key,mail varchar(25));
insert into mails(
id,mail)
values
(1,"a@b.com"),
(2,"c@d.com"),
(3,"a@b.com");

select mail from mails
group by mail
having count(*) >1;