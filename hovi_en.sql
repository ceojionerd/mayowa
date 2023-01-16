DROP database if exists hovi_en;
create database hovi_en CHARACTER SET ='UTF8' COLLATE = 'UTF8_SWEDISH_CI';
use hovi_en;

create table hovi_en.department (depcode numeric(6) primary key,
depname varchar(15),
code varchar(30))
ENGINE = InnoDB;

create table hovi_en.person (socsecno char(4) primary key,
fname varchar(10),
lname varchar(10),
city varchar(10),
degree char(8),
salary numeric(7,2),
taxperc numeric(3,1),
bdate date,
depcode numeric(6),
constraint person_department_fk foreign key (depcode) references department(depcode))
ENGINE = InnoDB;

create table hovi_en.project(
pid char(4),
pname varchar(15),
priorit numeric(2),
location varchar(15),
constraint primary key (pid))
ENGINE = InnoDB;

create table hovi_en.proj_pers(pid char(4),
socsecno char(4),
hours numeric(6),
hours_planned numeric(6),
constraint primary key (pid, socsecno),
constraint proj_pers_project_fk foreign key (pid) references project(pid),
constraint proj_pers_person_fk foreign key (socsecno) references person(socsecno))
ENGINE = InnoDB;

insert into hovi_en.department values (1, 'ICT', 'asd_123456');
insert into hovi_en.department values (2, 'Economic dept', 's  dfg*234');
insert into hovi_en.department values (3, 'Production dept', 'a_ss*8888');
insert into hovi_en.department values (4, 'Marketing', 'a%');

insert into hovi_en.project values ('P1', 'BOOKKEEPING', 2, 'TURKU');
insert into hovi_en.project values ('P2', 'INVOICING', 1, 'HELSINKI');
insert into hovi_en.project values ('P3', 'STORAGE', 3, 'HELSINKI');
insert into hovi_en.project values ('P4', 'LEDGER', 2, 'TURKU');
insert into hovi_en.project values ('P5', 'CLIENTS', 3, 'KUOPIO');
insert into hovi_en.project values ('P6', 'STATISTICS', NULL, NULL);

insert into hovi_en.person values ('2134', 'Jukka', 'Virta', 'TURKU', 'Yo', 2800, 22, '2004-03-03',3);
insert into hovi_en.person values ('2234', 'Mikko', 'Metsä', 'TURKU', 'BA', 3100, 33, '1993-10-15',1);
insert into hovi_en.person values ('2245', 'Raili', 'Joki', 'HELSINKI', 'BSc', 3100, 31, '1998-09-24',4);
insert into hovi_en.person values ('2345', 'Leo', 'Meri', 'TURKU', NULL, 2800, 24.5, '2002-01-01',3);
insert into hovi_en.person values ('2884', 'Jukka', 'Järvi', 'HELSINKI', 'BSc', 2960, 31, '1993-05-12',NULL);
insert into hovi_en.person values ('3546', 'Laura', 'Ranta', 'TAMPERE', 'Yo', 2650, 22, '2001-09-15',1);
insert into hovi_en.person values ('3547', 'Lyly', 'Jokinen', 'TAMPERE', 'MSc', 2800, 37, '1993-05-12',3);


insert into hovi_en.proj_pers values ('P1', '2134', 300, 300);
insert into hovi_en.proj_pers values ('P1', '2234', 200, NULL);
insert into hovi_en.proj_pers values ('P1', '2245', 200, 300);
insert into hovi_en.proj_pers values ('P1', '2345', 100, 100);
insert into hovi_en.proj_pers values ('P1', '2884', 100, 200);
insert into hovi_en.proj_pers values ('P1', '3546', 400, 500);
insert into hovi_en.proj_pers values ('P1', '3547', 300, 200);
insert into hovi_en.proj_pers values ('P2', '2134', 300, NULL);
insert into hovi_en.proj_pers values ('P2', '2245', 400, 500);
insert into hovi_en.proj_pers values ('P3', '2245', 900, 100);
insert into hovi_en.proj_pers values ('P4', '2884', 400, 600);
insert into hovi_en.proj_pers values ('P4', '2234', 300, 400);
insert into hovi_en.proj_pers values ('P4', '2245', 200, 200);