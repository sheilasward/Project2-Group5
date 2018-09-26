-- Create Data for tables
USE bootcampudb; 

insert into professors (lastName, firstName, building, office, dept, createdAt, updatedAt) values ('Weddell', 'Grant', 'DC', '346', 'Computer Science', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into professors (lastName, firstName, building, office, dept, createdAt, updatedAt) values ('Ilyas', 'Ihab', 'DC', '348', 'Computer Science', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into professors (lastName, firstName, building, office, dept, createdAt, updatedAt) values ('Acker', 'Timothy', 'AG', '324', 'Web Development', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into professors (lastName, firstName, building, office, dept, createdAt, updatedAt) values ('King', 'Noah', 'AG', '331', 'Web Development', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into professors (lastName, firstName, building, office, dept, createdAt, updatedAt) values ('Halsey', 'Rebecca', 'AT', '124', 'Computer Science', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into professors (lastName, firstName, building, office, dept, createdAt, updatedAt) values ('Durham', 'Zach', 'AG', '306', 'Web Development', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

select * from professor;

insert into courses (courseName, courseDesc, credits, dept, prerequisite, createdAt, updatedAt) values ('CSC-151', 'Beginning JAVA', 3, 'Computer Science', 'CSC-121', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into courses (courseName, courseDesc, credits, dept, prerequisite, createdAt, updatedAt) values ('CSC-252', 'Advanced JAVA', 3, 'Computer Science', 'CSC-151', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into courses (courseName, courseDesc, credits, dept, prerequisite, createdAt, updatedAt) values ('WEB-115', 'Web Markup & Scripting', 3, 'Web Development', 'CIS-110', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into courses (courseName, courseDesc, credits, dept, prerequisite, createdAt, updatedAt) values ('WEB-210', 'Web Design', 3, 'Web Development', 'WEB-115', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into courses (courseName, courseDesc, credits, dept, prerequisite, createdAt, updatedAt) values ('WEB-140', 'Beginning NodeJS', 3, 'Web Development', 'CSC-121', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into courses (courseName, courseDesc, credits, dept, prerequisite, createdAt, updatedAt) values ('WEB-240', 'Advanced NodeJS', 3, 'Web Development', 'WEB-140', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into courses (courseName, courseDesc, credits, dept, prerequisite, createdAt, updatedAt) values ('CSC-153', 'C# Programming', 3, 'Computer Science', 'CSC-121', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into courses (courseName, courseDesc, credits, dept, prerequisite, createdAt, updatedAt) values ('CSC-249', 'Data Structures & Algorithms', 3, 'Computer Science', 'WEB-140', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into courses (courseName, courseDesc, credits, dept, prerequisite, createdAt, updatedAt) values ('CIS-110', 'Introduction to Computers', 3, 'Information Systems', ' ', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into courses (courseName, courseDesc, credits, dept, prerequisite, createdAt, updatedAt) values ('CIS-115', 'Intro to Programming & Logic', 3, 'Information Systems', 'CIS-110', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into courses (courseName, courseDesc, credits, dept, prerequisite, createdAt, updatedAt) values ('CTI-110', 'Web, Pgm, & Db Foundation', 3, 'Computer Technology Integration', 'CIS-110', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into courses (courseName, courseDesc, credits, dept, prerequisite, createdAt, updatedAt) values ('CTI-130', 'OS & Device Foundation', 6, 'Computer Technology Integration', 'CIS-110', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into courses (courseName, courseDesc, credits, dept, prerequisite, createdAt, updatedAt) values ('WEB-214', 'Social Media', 3, 'Web Development', 'WEB-140', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into courses (courseName, courseDesc, credits, dept, prerequisite, createdAt, updatedAt) values ('WEB-225', 'Content Management Systems', 3, 'Web Development', 'WEB-140', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into courses (courseName, courseDesc, credits, dept, prerequisite, createdAt, updatedAt) values ('WEB-250', 'Database Driven Websites', 3, 'Web Development', 'WEB-240', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into courses (courseName, courseDesc, credits, dept, prerequisite, createdAt, updatedAt) values ('WEB-287', 'Web E-Portfolio', 2, 'Web Development', 'WEB-250', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into courses (courseName, courseDesc, credits, dept, prerequisite, createdAt, updatedAt) values ('CSC-289', 'Programming Capstone Project', 3, 'Computer Science', 'CSC-249', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into courses (courseName, courseDesc, credits, dept, prerequisite, createdAt, updatedAt) values ('CSC-121', 'Computing Fundamentals', 4, 'Computer Science', 'CIS-115', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

select * from courses;

insert into classes (courseName, courseDesc, credits, dept, prerequisite, createdAt, updatedAt) values ('CSC-121', 'Computing Fundamentals', 4, 'Computer Science', 'CIS-115', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into class values ('CS448', 'S2006', 1, 1);
insert into class values ('CS448', 'S2006', 2, 1);
insert into enrollment values (1, 'CS448', 'S2006', 2);

-- Select all columns from tables
select * from student;
select * from class;
select * from enrollment;

