alter table project drop column comp_date
alter table project add comp_date date
update project
set comp_date = case when p_id = 101 then '2023-07-21'
when p_id = 102 then '2023-07-22'
when p_id = 103 then '2023-07-23'
when p_id = 104 then '2023-07-25'
when p_id = 105 then '2023-07-30'
end
create table project(
p_id int not null unique,
p_name varchar(10),
m_id int,
d_id int,
comp_date varchar(10),
primary key(p_id), constraint FK foreign key(m_id) references pmgr(m_id),foreign key(d_id) references dvr(d_id))
create table pmgr(
m_id int not null unique,
m_name varchar(10),
m_num int,
m_mail varchar(20),
adr varchar(10),
primary key(m_id))
create table dvr(
d_id int not null unique,
d_name varchar(10),
d_num int,
adr varchar(10),
d_mail varchar(20),
primary key(d_id))

insert into project values (101,'ABC',1,11, 2),(102,'DEF',2,12, 24),(103,'GHI',3,13, 28),(104,'JKL',4,14, 29),(105,'MNO',5,15, 30)
insert into pmgr values (1,'Ron',1345,'Delhi', 'acv'),(2,'Billy',25434,'Hyd', 'ach'),(3,'Dustin',357,'Delhi','ack' ),(4,'Monika',4986,'Hyd','aci'),(5,'Chandler',5654,'Hyd', 'acp')
insert into dvr values (11,'Harry',1556,'MP', 'acvk'),(12,'Joe',2345,'Hyd', 'acvy'),(13,'Ross',389,'Mumbai', 'acvw'),(14,'Rachel',4677,'Mumbai', 'acvm'),(15,'Joey',5453,'Delhi', 'acvs')
select * from project
select * from pmgr
select * from dvr