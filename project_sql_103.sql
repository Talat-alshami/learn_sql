CREATE DATABASE project_sql_103;
-- 
-- CREATE RILEATION BEWTWEEN studends and teachers

CREATE TABLE studends (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE Table teachers (
    id INT PRIMARY KEY AUTO_INCREMENT ,
    name VARCHAR(50) not NULL
);

CREATE Table stu_teach(
    id int PRIMARY KEY AUTO_INCREMENT,
    id_stu int NOT NULL ,
    id_teach int NOT NULL ,
    Foreign Key ( id_stu) REFERENCES studends(id),
    FOREIGN KEY (id_teach) REFERENCES teachers(id)
);

--    CREATE RILEATION BETWEEN TEACHERS AND SUBJECTS

CREATE TABLE subjects(
    id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) UNIQUE NOT NULL 

);
alter TABLE teachers
ADD COLUMN id_sub int not NULL;
ALTER TABLE teachers 
ADD FOREIGN KEY (id_sub)  REFERENCES subjects(id);

-- create rileation between students and subjects 

CREATE TABLE stu_sub(
    id int PRIMARY KEY AUTO_INCREMENT,
    id_stud int not NULL,
    id_subj int not NULL,
    FOREIGN KEY (id_stud) REFERENCES studends(id),
    FOREIGN KEY(id_subj) REFERENCES subjects(id)
);

INSERT INTO subjects (name) VALUES 
('Mathematics'),   
('Science'),       
('History'),        
('English'),        
('Computer Science'), 
('Art'); 

INSERT INTO studends (name) VALUES 
('Ahmed Ali'),       
('Sara Mohammed'),   
('Omar Hassan'),    
('Fatima Khalid'),   
('Yousef Nasser'),   
('Laila Saeed'),     
('Hassan Adel'),      
('Noor Al-Huda'),   
('Khaled Waleed'),  
('Maryam Salim');


INSERT INTO teachers (name, id_sub) VALUES 
('Mr. Smith', 1),    
('Ms. Jones', 2),   
('Mr. Brown', 3),   
('Ms. Emily', 4),    
('Mr. David', 5),   
('Ms. Sophia', 6);   

INSERT INTO stu_teach (id_stu, id_teach) VALUES 
(1, 1), (1, 2), (1, 4), 
(2, 1), (2, 3),          
(3, 2), (3, 5),         
(4, 4), (4, 6),         
(5, 1), (5, 5),          
(6, 2), (6, 3), (6, 6), 
(7, 4), (7, 5),          
(8, 1), (8, 6),          
(9, 2), (9, 3),         
(10, 4), (10, 5);       


INSERT INTO stu_sub (id_stud, id_subj) VALUES 
(1, 1), (1, 2), (1, 4), 
(2, 1), (2, 3),         
(3, 2), (3, 5),          
(4, 4), (4, 6),          
(5, 1), (5, 5),          
(6, 2), (6, 3), (6, 6), 
(7, 4), (7, 5),         
(8, 1), (8, 6),          
(9, 2), (9, 3),         
(10, 4), (10, 5);       


-- create procedure thhat show all ditales students and subjects 
DELIMITER //
CREATE Procedure student_info()
BEGIN 
SELECT  studends.id , studends.name , subjects.name from stu_sub
INNER JOIN studends on studends.id = stu_sub.id_stud
INNER join subjects on subjects.id = stu_sub.id_subj 
order by studends.id;
END //

DELIMITER ;
drop PROCEDURE student_info;
call student_info;

-- create view for teachers shoew name and subjects
CREATE View teachers_info
as
SELECT teachers.id,teachers.name as 't_name',subjects.name as 's.name' from subjects
INNER join teachers
on teachers.id_sub = subjects.id;

SELECT * FROM teachers_info;

drop VIEW teachers_info;


CREATE INDEX name_index
on studends(name);

show INDEXEs from studends;

ALTER Table studends 
DROP INDEX name_index ;