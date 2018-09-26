-- Create Data for tables
USE bootcampudb; 
insert into course values ('CS448', 'Introduction to Databases');
insert into professor values (1, 'Weddell, Grant', 'DC3346', 'Computer Science');
insert into professor values (2, 'Ilyas, Ihab', 'DC3348', 'Computer Science');
insert into student values (1, 'Jones, Fred', 4);
insert into class values ('CS448', 'S2006', 1, 1);
insert into class values ('CS448', 'S2006', 2, 1);
insert into enrollment values (1, 'CS448', 'S2006', 2);
insert into schedule values ('CS448', 'S2006', 1, 'Monday', '09:30', 'MC4063');
insert into schedule values ('CS448', 'S2006', 1, 'Wednesday', '09:30', 'MC4063');
insert into schedule values ('CS448', 'S2006', 1, 'Friday', '09:30', 'MC4063');
insert into schedule values ('CS448', 'S2006', 2, 'Monday', '11:30', 'MC4058');
insert into schedule values ('CS448', 'S2006', 2, 'Wednesday', '11:30', 'MC4058');
insert into schedule values ('CS448', 'S2006', 2, 'Friday', '11:30', 'MC4058');

-- Select all columns from tables
select * from course;
select * from professor;
select * from student;
select * from class;
select * from enrollment;
select * from schedule;
