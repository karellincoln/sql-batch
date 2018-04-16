insert department(dno,dept_name) values
('d01',  '软件学院'),
('d02',  '计算机学院');

insert speciality values
('s01', 'd01', '软件工程'),
('s02', 'd02', '计算机科学');

insert teacher(t_no,t_name,dno) values
('t01', 'Tang', 'd01'),
('t02', 'Chen', 'd01');

insert student values
('20130001', 'Tom',  '男',  '19940101', 'd01', 's01', 'rg1'),
('20130002', 'Jane', '女',  '19940201', 'd01', 's01', 'rg1'),
('20130003', 'Joy',  '女',  '19940301', 'd02', 's02', 'jk1'),
('20130004', 'Rice', '男',  '19940401', 'd02', 's02', 'jk1');

insert course(cno,cname,spno) values
('c1', '数据库',   's01'),
('c2', '数据结构', 's02');

insert student_course values
('20130001', 1, 85),
('20130002', 2, 78),
('20130003', 1, 59),
('20130004', 1, 80);

insert teacher_course(tcid,t_no,spno,cno) values
(1, 't01', 's01', 'c1'),
(2, 't02', 's02', 'c2');

insert class(spno,class_no) values
('s01', 'rg1'),
('s02', 'jk1');
