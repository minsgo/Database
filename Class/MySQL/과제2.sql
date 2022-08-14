/*create database min;
show databases;
use min;
show tables;
create table student
(sno integer, 
sname char(10) not null, 
dept char(10) not null, 
year integer, 
unique (sno),
primary key(sno));
create table course
(cno integer, 
cname char(5) not null, 
credit integer, 
dept char(10) not null, 
prname char(10) not null,
unique (cno),
primary key(cno));
create table enrol
(sno integer, 
cno integer, 
grade integer, 
midterm integer,
finalterm integer,
primary key (sno, cno),
foreign key (sno) references student(sno) on delete cascade on update cascade,
foreign key (cno) references course(cno) on delete cascade on update cascade);*/
show databases;
use min;
show tables;
select * from student;
select * from course;
select * from enrol;
/*alter table enrol modify grade char(3) not null;
alter table student add check(year>=1 and year<=4);
insert into student(sno, sname, dept, year) values('001', 'minseok1', 'human', '2');
insert into student(sno, sname, dept, year) values('002', 'minseok2', 'com', '3');
insert into student(sno, sname, dept, year) values('003', 'minseok3', 'elec', '1');
insert into student(sno, sname, dept, year) values('004', 'minseok4', 'human', '2');
insert into student(sno, sname, dept, year) values('005', 'minseok5', 'game', '1');
insert into student(sno, sname, dept, year) values('006', 'minseok6', 'elec', '3');
insert into student(sno, sname, dept, year) values('007', 'minseok7', 'com', '4');
insert into student(sno, sname, dept, year) values('008', 'minseok8', 'game', '4');
insert into student(sno, sname, dept, year) values('009', 'minseok9', 'human', '1');
insert into student(sno, sname, dept, year) values('010', 'minseok10', 'com', '3');
insert into student(sno, sname, dept, year) values('011', 'minseok11', 'human', '2');
insert into student(sno, sname, dept, year) values('012', 'minseok12', 'elec', '1');
insert into student(sno, sname, dept, year) values('013', 'minseok13', 'com', '4');
insert into student(sno, sname, dept, year) values('014', 'minseok14', 'game', '3');
insert into student(sno, sname, dept, year) values('015', 'minseok15', 'com', '1');
insert into student(sno, sname, dept, year) values('016', 'minseok16', 'elec', '2');
insert into student(sno, sname, dept, year) values('017', 'minseok17', 'com', '3');
insert into student(sno, sname, dept, year) values('018', 'minseok18', 'human', '3');
insert into student(sno, sname, dept, year) values('019', 'minseok19', 'human', '2');
insert into student(sno, sname, dept, year) values('020', 'minseok20', 'elec', '1');
insert into student(sno, sname, dept, year) values('021', 'minseok17', 'com', '1');
insert into course(cno, cname, credit, dept, pname) values('100', 'DB', '3', 'com', '교수minseok');
insert into course(cno, cname, credit, dept, pname) values('200', 'ELEC', '3', 'elec', '교수minseok2');
insert into course(cno, cname, credit, dept, pname) values('300', 'AI', '3', 'human', '교수minseok3');
insert into course(cno, cname, credit, dept, pname) values('400', 'C', '3', 'com', '교수minseok');
insert into course(cno, cname, credit, dept, pname) values('500', 'JAVA', '3', 'human', '교수minseok3');
insert into course(cno, cname, credit, dept, pname) values('600', 'GAME', '3', 'game', '교수minseok4');
insert into course(cno, cname, credit, dept, pname) values('700', 'MATH', '3', 'elec', '교수minseok2');
insert into course(cno, cname, credit, dept, pname) values('800', 'WEB', '3', 'com', '교수minseok');
insert into course(cno, cname, credit, dept, pname) values('900', 'C#', '3', 'game', '교수minseok4');
insert into course(cno, cname, credit, dept, pname) values('1000', 'C', '3', 'human', '교수minseok3');
insert into course(cno, cname, credit, dept, pname) values('1100', 'C', '3', 'elec', '교수minseok2');
insert into enrol(sno, cno, grade, midterm, finalterm) values('001', '100', 'A+', '95', '95');
insert into enrol(sno, cno, grade, midterm, finalterm) values('001', '300', 'B+', '75', '85');
insert into enrol(sno, cno, grade, midterm, finalterm) values('001', '400', 'A', '90', '83');
insert into enrol(sno, cno, grade, midterm, finalterm) values('001', '1000', 'B', '60', '75');
insert into enrol(sno, cno, grade, midterm, finalterm) values('002', '100', 'A', '85', '90');
insert into enrol(sno, cno, grade, midterm, finalterm) values('002', '800', 'B', '75', '80');
insert into enrol(sno, cno, grade, midterm, finalterm) values('002', '400', 'C+', '55', '65');
insert into enrol(sno, cno, grade, midterm, finalterm) values('003', '200', 'A+', '100', '95');
insert into enrol(sno, cno, grade, midterm, finalterm) values('003', '700', 'B+', '85', '94');
insert into enrol(sno, cno, grade, midterm, finalterm) values('003', '1100', 'A', '90', '90');
insert into enrol(sno, cno, grade, midterm, finalterm) values('004', '300', 'A+', '95', '100');
insert into enrol(sno, cno, grade, midterm, finalterm) values('004', '500', 'B', '82', '70');
insert into enrol(sno, cno, grade, midterm, finalterm) values('004', '1000', 'A+', '95', '95');
insert into enrol(sno, cno, grade, midterm, finalterm) values('005', '600', 'C', '50', '45');
insert into enrol(sno, cno, grade, midterm, finalterm) values('005', '900', 'B+', '80', '95');
insert into enrol(sno, cno, grade, midterm, finalterm) values('005', '100', 'A+', '95', '95');
insert into enrol(sno, cno, grade, midterm, finalterm) values('021', '100', 'B', '75', '90');
insert into enrol(sno, cno, grade, midterm, finalterm) values('021', '400', 'A', '90', '92');
insert into enrol(sno, cno, grade, midterm, finalterm) values('021', '1100', 'B+', '87', '93');
insert into enrol(sno, cno, grade, midterm, finalterm) values('021', '1000', 'A+', '93', '95');
insert into enrol(sno, cno, grade, midterm, finalterm) values('015', '100', 'A', '91', '92');
insert into enrol(sno, cno, grade, midterm, finalterm) values('019', '700', 'C+', '52', '63');
insert into enrol(sno, cno, grade, midterm, finalterm) values('010', '800', 'B', '82', '83');
insert into enrol(sno, cno, grade, midterm, finalterm) values('012', '1100', 'C', '45', '65');
insert into enrol(sno, cno, grade, midterm, finalterm) values('017', '100', 'A+', '96', '94');
insert into enrol(sno, cno, grade, midterm, finalterm) values('013', '400', 'B+', '85', '73');
insert into enrol(sno, cno, grade, midterm, finalterm) values('006', '700', 'A', '90', '88');*/