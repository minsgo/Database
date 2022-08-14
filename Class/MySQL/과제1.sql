show databases;
use human;
show tables;
/*create table student
(snum integer, 
name char(5) not null, 
grade integer, 
sex char(2) not null, 
unique (snum),
primary key(snum));*/
show tables;
/*insert into student(snum, name, grade, sex) values('201810757', 'min', '2', 'M');
insert into student(snum, name, grade, sex) values('201810760', 'sang', '2', 'M');
insert into student(snum, name, grade, sex) values('201810759', 'min', '2', 'M');
insert into student(snum, name, grade, sex) values('201810820', 'hee', '2', 'F');
insert into student(snum, name, grade, sex) values('201810806', 'su', '2', 'F');
insert into student(snum, name, grade, sex) values('201810818', 'jong', '2', 'M');*/
select * from student;
/*create table class
(classname char(8) not null,
rtime integer, 
credit integer,
day char(5) not null, 
unique (classname),
primary key(classname));*/
show tables;
/*insert into class(classname, rtime, credit, day) values('HCI', '3', '3', 'MON');
insert into class(classname, rtime, credit, day) values('OS', '3', '3', 'WED');
insert into class(classname, rtime, credit, day) values('NET', '3', '3', 'WED');
insert into class(classname, rtime, credit, day) values('ALGO', '2', '3', 'THU');
insert into class(classname, rtime, credit, day) values('GAME', '3', '3', 'MON');
insert into class(classname, rtime, credit, day) values('DB', '2', '3', 'TUE');
insert into class(classname, rtime, credit, day) values('MATH', '2', '3', 'TUE');
insert into class(classname, rtime, credit, day) values('C', '4', '3', 'THU');
insert into class(classname, rtime, credit, day) values('JAVA', '2', '3', 'THU');*/
select * from class;
/*create table timetable
(snum integer, 
classname char(8) not null, 
Attendance integer, 
testday char(7) not null, 
primary key(snum, classname), 
foreign key (snum) references student(snum) on delete cascade on update cascade,
foreign key (classname) references class(classname) on delete cascade on update cascade);*/
show tables;
select * from timetable;
/*alter table timetable add check(Attendance>=0 and Attendance<=100);
insert into timetable(snum, classname, Attendance, testday) values('201810757', 'GAME', '100', '12/16');
insert into timetable(snum, classname, Attendance, testday) values('201810757', 'OS', '95', '12/18');
insert into timetable(snum, classname, Attendance, testday) values('201810757', 'DB', '80', '12/17');
insert into timetable(snum, classname, Attendance, testday) values('201810760', 'HCI', '100', '12/16');
insert into timetable(snum, classname, Attendance, testday) values('201810760', 'JAVA', '90', '12/19');
insert into timetable(snum, classname, Attendance, testday) values('201810760', 'MATH', '95', '12/17');
insert into timetable(snum, classname, Attendance, testday) values('201810759', 'ALGO', '100', '12/19');
insert into timetable(snum, classname, Attendance, testday) values('201810759', 'OS', '100', '12/18');
insert into timetable(snum, classname, Attendance, testday) values('201810759', 'JAVA', '100', '12/19');
insert into timetable(snum, classname, Attendance, testday) values('201810806', 'JAVA', '95', '12/19');
insert into timetable(snum, classname, Attendance, testday) values('201810806', 'OS', '100', '12/18');
insert into timetable(snum, classname, Attendance, testday) values('201810806', 'C', '85', '12/19');
insert into timetable(snum, classname, Attendance, testday) values('201810818', 'NET', '100', '12/18');
insert into timetable(snum, classname, Attendance, testday) values('201810818', 'MATH', '100', '12/17');
insert into timetable(snum, classname, Attendance, testday) values('201810818', 'C', '100', '12/19');
insert into timetable(snum, classname, Attendance, testday) values('201810820', 'ALGO', '95', '12/19');
insert into timetable(snum, classname, Attendance, testday) values('201810820', 'NET', '95', '12/18');
insert into timetable(snum, classname, Attendance, testday) values('201810820', 'MATH', '95', '12/17');*/
select * from timetable;