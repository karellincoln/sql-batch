create table department(
dno char(6) primary key,
dept_name char(20) not null,
header char(8)
) CHARSET=utf8;


create table speciality(
spno char(8) primary key,
dno char(6) not null,
spname char(20) not null
)CHARSET=utf8;
ALTER TABLE speciality ADD FOREIGN KEY (dno) REFERENCES department(dno);


create table student(
s_no char(8) primary key,
s_name char(8) not null,
sex char(2),
sbirthday date,
dno char(6),
spno char(8),
classno char(4)
)CHARSET=utf8;


create table course(
cno char(10) primary key,
cname char(20) not null,
spno char(8),
ctno tinyint,
lecture tinyint,
experiment tinyint,
semester tinyint,
credit tinyint
)CHARSET=utf8;
ALTER TABLE course ADD FOREIGN KEY (spno) REFERENCES speciality(spno) ON DELETE RESTRICT;

create table student_course(
s_no char(8) ,
tcid smallint ,
score tinyint,
primary key(s_no,tcid)
)CHARSET=utf8;


create table teacher(
 t_no char(8) primary key,
 t_name char(8) not null,
 t_sex char(2),
 t_birthday date,
dno char(6),
tech_title char(10)
)CHARSET=utf8;


create table teacher_course(
tcid smallint primary key,
t_no    char(8),    
spno    char(8),
class_no    char(4) ,
cno char(10) not null,
semester    char(6) ,
schoolyear  char(10)
)CHARSET=utf8;


create table class(
spno    char(8) ,
class_no    char(4),
header  char(8),
primary key(spno,class_no)
)CHARSET=utf8;
