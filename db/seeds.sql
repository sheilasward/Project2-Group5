-- Create Data for tables
USE bootcampudb; 

insert into professors (lastName, firstName, building, office, dept, createdAt, updatedAt) values ('Weddell', 'Grant', 'DC', '346', 'Computer Science', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into professors (lastName, firstName, building, office, dept, createdAt, updatedAt) values ('Ilyas', 'Ihab', 'DC', '348', 'Computer Science', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into professors (lastName, firstName, building, office, dept, createdAt, updatedAt) values ('Acker', 'Timothy', 'AG', '324', 'Web Development', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into professors (lastName, firstName, building, office, dept, createdAt, updatedAt) values ('King', 'Noah', 'AG', '331', 'Web Development', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into professors (lastName, firstName, building, office, dept, createdAt, updatedAt) values ('Halsey', 'Rebecca', 'AT', '124', 'Computer Science', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into professors (lastName, firstName, building, office, dept, createdAt, updatedAt) values ('Durham', 'Zach', 'AG', '306', 'Web Development', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into professors (lastName, firstName, building, office, dept, createdAt, updatedAt) values ('Carrier', 'James', 'AT', '130', 'Computer Science', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into professors (lastName, firstName, building, office, dept, createdAt, updatedAt) values ('Summers', 'Shawna', 'AT', '133', 'Web Development', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into professors (lastName, firstName, building, office, dept, createdAt, updatedAt) values ('Spratling', 'Renard', 'AT', '136', 'Web Design', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

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

insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'A', 'Mo We Fr', '10:00a', 'AG', '201', 25, 20, 9, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'B', 'Tu Th', '10:00a', 'AG', '201', 25, 16, 9, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'A', 'Mo We Fr', '10:00a', 'AG', '201', 25, 0, 9, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'B', 'Tu Th', '10:00a', 'AG', '201', 25, 0, 9, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'A', 'Mo We Fr', '11:00a', 'AG', '220', 25, 21, 11, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'B', 'Tu Th', '11:00a', 'AG', '220', 25, 15, 11, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'A', 'Mo We Fr', '11:00a', 'AG', '220', 25, 0, 11, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'B', 'Tu Th', '11:00a', 'AG', '220', 25, 0, 11, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'A', 'Mo Tu We Th Fr', '8:00a', 'AG', '226', 25, 19, 12, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'B', 'Mo Tu We Th Fr', '8:00a', 'AG', '230', 25, 22, 12, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'A', 'Mo Tu We Th Fr', '8:00a', 'AG', '226', 25, 0, 12, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'B', 'Mo Tu We Th Fr', '8:00a', 'AG', '230', 25, 0, 12, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'A', 'Mo We Fr', '2:00p', 'AG', '201', 25, 18, 10, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'B', 'Tu Th', '2:00p', 'AG', '201', 25, 23, 10, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'A', 'Mo We Fr', '2:00p', 'AG', '201', 25, 0, 10, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'B', 'Tu Th', '2:00p', 'AG', '201', 25, 0, 10, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'A', 'Mo We Fr', '9:00a', 'AG', '231', 25, 23, 3, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'B', 'Tu Th', '9:30a', 'AG', '231', 25, 15, 3, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'A', 'Mo We Fr', '9:00a', 'AG', '231', 25, 0, 3, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'B', 'Tu Th', '9:30a', 'AG', '231', 25, 0, 3, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'A', 'Mo We Fr', '9:00a', 'AG', '226', 25, 20, 18, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'B', 'Tu Th', '9:30a', 'AG', '226', 25, 22, 18, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'A', 'Mo We Fr', '9:00a', 'AG', '226', 25, 0, 18, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'B', 'Tu Th', '9:30a', 'AG', '226', 25, 0, 18, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'A', 'Mo We Fr', '2:00p', 'AG', '226', 25, 15, 1, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'B', 'Tu Th', '2:00p', 'AG', '226', 25, 17, 1, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'A', 'Mo We Fr', '2:00p', 'AG', '226', 25, 0, 1, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'B', 'Tu Th', '2:00p', 'AG', '226', 25, 0, 1, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'A', 'Mo We Fr', '8:00a', 'AT', '201', 25, 16, 7, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'B', 'Tu Th', '8:00a', 'AT', '201', 25, 18, 7, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'A', 'Mo We Fr', '8:00a', 'AT', '201', 25, 0, 7, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'B', 'Tu Th', '8:00a', 'AT', '201', 25, 0, 7, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'A', 'Mo We Fr', '11:00a', 'AT', '202', 15, 12, 2, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'B', 'Tu Th', '11:00a', 'AT', '202', 15, 7, 2, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'A', 'Mo We Fr', '11:00a', 'AT', '202', 15, 0, 2, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'B', 'Tu Th', '11:00a', 'AT', '202', 15, 0, 2, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'A', 'Mo We Fr', '9:00a', 'AT', '227', 20, 18, 4, 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'B', 'Tu Th', '9:30a', 'AT', '227', 20, 16, 4, 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'A', 'Mo We Fr', '9:00a', 'AT', '227', 20, 0, 4, 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'B', 'Tu Th', '9:300a', 'AT', '227', 20, 0, 4, 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'A', 'Mo We Fr', '1:00p', 'AG', '209', 25, 17, 5, 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'B', 'Tu Th', '12:30p', 'AG', '209', 25, 14, 5, 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'A', 'Mo We Fr', '1:00p', 'AG', '209', 25, 0, 5, 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'B', 'Tu Th', '12:30p', 'AG', '209', 25, 0, 5, 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'A', 'Mo We Fr', '9:00a', 'AG', '209', 25, 18, 6, 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'B', 'Tu Th', '9:30a', 'AG', '209', 25, 13, 6, 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'A', 'Mo We Fr', '9:00a', 'AG', '209', 25, 0, 6, 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'B', 'Tu Th', '9:30a', 'AG', '209', 25, 0, 6, 6, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'A', 'Mo We Fr', '1:00p', 'AT', '205', 25, 19, 8, 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'B', 'Tu Th', '12:30p', 'AT', '205', 25, 20, 8, 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'A', 'Mo We Fr', '1:00p', 'AT', '205', 25, 0, 8, 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'B', 'Tu Th', '12:30p', 'AT', '205', 25, 0, 8, 7, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'A', 'Mo We Fr', '8:00a', 'AT', '211', 20, 14, 13, 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'B', 'Tu Th', '8:00a', 'AT', '211', 20, 12, 13, 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'A', 'Mo We Fr', '8:00a', 'AT', '211', 20, 0, 13, 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'B', 'Tu Th', '8:00a', 'AT', '211', 20, 0, 13, 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'A', 'Mo We Fr', '11:00a', 'AT', '211', 20, 15, 14, 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'B', 'Tu Th', '11:00a', 'AT', '211', 20, 16, 14, 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'A', 'Mo We Fr', '11:00a', 'AT', '211', 20, 0, 14, 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'B', 'Tu Th', '11:00a', 'AT', '211', 20, 0, 14, 9, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'A', 'Mo We Fr', '9:00a', 'AT', '212', 25, 20, 15, 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'B', 'Tu Th', '9:30a', 'AT', '212', 25, 18, 15, 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'A', 'Mo We Fr', '9:00a', 'AT', '212', 25, 0, 15, 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'B', 'Tu Th', '9:30a', 'AT', '212', 25, 0, 15, 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'A', 'Mo We', '11:00a', 'AT', '212', 25, 15, 16, 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'B', 'Tu Th', '11:00a', 'AT', '212', 25, 15, 16, 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'A', 'Mo We', '11:00a', 'AT', '212', 25, 0, 16, 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'B', 'Tu Th', '11:00a', 'AT', '212', 25, 0, 16, 8, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'A', 'Mo We Fr', '9:00a', 'AT', '215', 20, 12, 17, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Spring 2018', 'B', 'Tu Th', '9:30a', 'AT', '215', 20, 14, 17, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'A', 'Mo We Fr', '9:00a', 'AT', '215', 20, 0, 17, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into classes (term, section, days, begTime, building, room, maxNumStudents, CurrNumStudents, courseid, professorid, createdAt, updatedAt) values ('Fall 2018', 'B', 'Tu Th', '9:30a', 'AT', '215', 20, 0, 17, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into students (lastName, firstName, studentEmail, studentYear, createdAt, updatedAt) values ('Marsh', 'Lyle', 'lylemarsh@bcu.edu', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into students (lastName, firstName, studentEmail, studentYear, createdAt, updatedAt) values ('Bennett', 'Stephen', 'stephenbennett@bcu.edu', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into students (lastName, firstName, studentEmail, studentYear, createdAt, updatedAt) values ('Cottle', 'Carey', 'careycottle@bcu.edu', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into students (lastName, firstName, studentEmail, studentYear, createdAt, updatedAt) values ('Mendoza', 'Micaela', 'micaelamendoza@bcu.edu', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into students (lastName, firstName, studentEmail, studentYear, createdAt, updatedAt) values ('Baron', 'Asher', 'asherbaron@bcu.edu', 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

insert into enrollments (term, classid, studentid, createdAt, updatedAt) values ('Spring 2018', 1, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into enrollments (term, classid, studentid, createdAt, updatedAt) values ('Spring 2018', 13, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into enrollments (term, classid, studentid, createdAt, updatedAt) values ('Spring 2018', 9, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into enrollments (term, classid, studentid, createdAt, updatedAt) values ('Spring 2018', 5, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into enrollments (term, classid, studentid, createdAt, updatedAt) values ('Spring 2018', 1, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into enrollments (term, classid, studentid, createdAt, updatedAt) values ('Spring 2018', 13, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into enrollments (term, classid, studentid, createdAt, updatedAt) values ('Spring 2018', 9, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into enrollments (term, classid, studentid, createdAt, updatedAt) values ('Spring 2018', 5, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into enrollments (term, classid, studentid, createdAt, updatedAt) values ('Spring 2018', 1, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into enrollments (term, classid, studentid, createdAt, updatedAt) values ('Spring 2018', 13, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into enrollments (term, classid, studentid, createdAt, updatedAt) values ('Spring 2018', 9, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into enrollments (term, classid, studentid, createdAt, updatedAt) values ('Spring 2018', 5, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into enrollments (term, classid, studentid, createdAt, updatedAt) values ('Spring 2018', 2, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into enrollments (term, classid, studentid, createdAt, updatedAt) values ('Spring 2018', 14, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into enrollments (term, classid, studentid, createdAt, updatedAt) values ('Spring 2018', 10, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into enrollments (term, classid, studentid, createdAt, updatedAt) values ('Spring 2018', 6, 4, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into enrollments (term, classid, studentid, createdAt, updatedAt) values ('Spring 2018', 2, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into enrollments (term, classid, studentid, createdAt, updatedAt) values ('Spring 2018', 14, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into enrollments (term, classid, studentid, createdAt, updatedAt) values ('Spring 2018', 10, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
insert into enrollments (term, classid, studentid, createdAt, updatedAt) values ('Spring 2018', 6, 5, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

/*
-- Select all columns from tables
select * from professors;
select * from courses;
select * from classes;
select * from students;
select * from enrollments;
*/