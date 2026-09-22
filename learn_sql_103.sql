CREATE DATABASE learn_sql_103;

/*                                    FOREIGN KEY
يستخدمة المفتاح الاجنبي لربط بين الجداول ضمن ضمن علاقة معينة مثل جدول الطالاب مع جدول المواد
او جدول الدرجات 

--      شروط ربط المفتاح الاجنبي مع الجدول الاب :
1- ان يكون العمود المربوط من الجدول الاب من نوع المفتاح الاساسي او فريد 
2- ان يكون العمود من الجدول الاب و العمود من الجدول الابن المعروف ب المفتاح الاجنبي ان يكونا من نفس نوع البيانات 
3- يمكن ان يكون  هناك العديد من المفتاح الاجنبي في نفس الجدول اذا ارتبط بعدة جداول 

*/
--------
--1 - انشاء المفتاح الاجنبي 
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    gender VARCHAR(10) NOT NULL ,
    subject_id int ,
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);

CREATE TABLE subjects(
    subject_id INT PRIMARY KEY ,
    name VARCHAR(20)
);

INSERT INTO subjects ( ) 
VALUES
(101,'math'),
(102,'program'),
(103,'physice')
;
INSERT INTO students(name,gender,subject_id)
VALUES
('talat','male',102),
('ali','male',101),
('hazem','male',103);

SELECT * FROM students ;

---                                    JOINS 
CREATE TABLE student (
    id INT PRIMARY KEY AUTO_INCREMENT ,
    name VARCHAR(50),
    birthdate DATE,
    gender VARCHAR(10),
    enterdate DATE,
    emil VARCHAR(50) UNIQUE ,
    level INT ,
    path VARCHAR(10),
    avrage DOUBLE(50,2),
    id_sub int,
    FOREIGN KEY (id_sub) REFERENCES subject(id_sub)

);
CREATE TABLE subject(
    id_sub INT PRIMARY KEY AUTO_INCREMENT ,
    name VARCHAR(50)
);

INSERT INTO student(name,birthdate,gender,enterdate,emil,level,path,avrage,id_sub)
VALUES
('Ali Mahmoud', '2005-01-10', 'Male', '2023-09-01', 'ali.m@student.com', 1, 'IT', 85.50,2),
('Sara Ahmed', '2005-04-15', 'Female', '2023-09-01', 'sara.a@student.com', 1, 'IT', 92.00,5),
('Omar Hassan', '2004-11-20', 'Male', '2022-09-01', 'omar.h@student.com', 2, 'Science', 78.50,3),
('Lina Khaled', '2005-07-05', 'Female', '2023-09-01', 'lina.k@student.com', 1, 'Arts', 88.00,6),
('Yousef Ali', '2003-02-28', 'Male', '2021-09-01', 'yousef.a@student.com', 3, 'Science', 75.00,2),
('Nour Ibrahim', '2006-09-12', 'Female', '2024-09-01', 'nour.i@student.com', 1, 'IT', 95.50,4),
('Ahmed Samir', '2004-05-18', 'Male', '2022-09-01', 'ahmed.s@student.com', 2, 'IT', 81.00,1),
('Mona Tarek', '2005-12-01', 'Female', '2023-09-01', 'mona.t@student.com', 1, 'Science', 89.00,2),
('Khaled Nabil', '2003-08-25', 'Male', '2021-09-01', 'khaled.n@student.com', 3, 'Arts', 70.50,4),
('Rania Adel', '2006-03-14', 'Female', '2024-09-01', 'rania.a@student.com', 1, 'IT', 98.00,3),
('Hassan Omar', '2004-10-30', 'Male', '2022-09-01', 'hassan.o@student.com', 2, 'Science', 84.00,6),
('Salma Youssef', '2005-06-22', 'Female', '2023-09-01', 'salma.y@student.com', 1, 'Arts', 77.50,5),
('Tarek Mahmoud', '2003-01-15', 'Male', '2021-09-01', 'tarek.m@student.com', 3, 'IT', 82.00,1),
('Hana Ali', '2006-11-05', 'Female', '2024-09-01', 'hana.a@student.com', 1, 'Science', 91.50,3),
('Mahmoud Said', '2004-07-19', 'Male', '2022-09-01', 'mahmoud.s@student.com', 2, 'Arts', 68.00,6),
('Farah Khalid', '2005-02-08', 'Female', '2023-09-01', 'farah.k@student.com', 1, 'IT', 86.50,5),
('Samer Nabil', '2003-09-27', 'Male', '2021-09-01', 'samer.n@student.com', 3, 'Science', 79.00,3),
('Dina Sami', '2006-05-16', 'Female', '2024-09-01', 'dina.s@student.com', 1, 'Arts', 94.00,1),
('Amr Hassan', '2004-12-03', 'Male', '2022-09-01', 'amr.h@student.com', 2, 'IT', 73.50,5),
('Yara Tarek', '2005-08-11', 'Female', '2023-09-01', 'yara.t@student.com', 1, 'Science', 87.00,1),
('Ziad Mahmoud', '2003-04-06', 'Male', '2021-09-01', 'ziad.m@student.com', 3, 'Arts', 80.50,4),
('Mai Ahmed', '2006-10-29', 'Female', '2024-09-01', 'mai.a@student.com', 1, 'IT', 96.50,2),
('Bassel Khaled', '2004-03-21', 'Male', '2022-09-01', 'bassel.k@student.com', 2, 'Science', 76.00,5),
('Jana Ali', '2005-11-14', 'Female', '2023-09-01', 'jana.a@student.com', 1, 'Arts', 83.50,6),
('Fadi Samir', '2003-06-09', 'Male', '2021-09-01', 'fadi.s@student.com', 3, 'IT', 71.00,1),
('Reem Nabil', '2006-01-25', 'Female', '2024-09-01', 'reem.n@student.com', 1, 'Science', 90.00,3),
('Wael Tarek', '2004-09-17', 'Male', '2022-09-01', 'wael.t@student.com', 2, 'Arts', 67.50,1),
('Aya Mahmoud', '2005-05-02', 'Female', '2023-09-01', 'aya.m@student.com', 1, 'IT', 88.50,4),
('Sami Khaled', '2003-12-24', 'Male', '2021-09-01', 'sami.k@student.com', 3, 'Science', 85.00,1),
('Layla Hassan', '2006-07-13', 'Female', '2024-09-01', 'layla.h@student.com', 1, 'Arts', 93.00,5);


INSERT INTO subject(name)
VALUES
('Mathematics'),
('Physics'),
('Chemistry'),
('Biology'),
('English'),
('Computer Science');

SELECT * from subject;
SELECT * FROM student;

--                    INNER JOIN 
SELECT student.id,student.name,student.gender,student.avrage,subject.name FROM student
INNER JOIN subject 
on student.id_sub = subject.id_sub

------------
--                                    LEFT  AND RIGHT JION 

INSERT INTO subject( name ) VALUES(
     'IA'
);

-- LEFT
SELECT student.id , student.name ,student.avrage ,subject.name from student
LEFT JOIN subject 
on student.id_sub = subject.id_sub

-- RIGHT

SELECT student.id , student.name ,subject.name
from student
RIGHT JOIN subject 
on student.id_sub = subject.id_sub


--           nutural join 

SELECT subject.name FROM student
NATURAL JOIN subject 

-- cross join  

SELECT student.name ,subject.name from student
CROSS JOIN subject

-----------------------
--                                          VIEW
-- create view 
CREATE VIEW show_stu
AS 
SELECT id, name , avrage,gender FROM student;

-- display view data
SELECT * FROM show_stu;

-- drop view 
DROP VIEW show_stu;

----------------------------------
--                                            INDEXES
-- CREATE INDEX
CREATE INDEX index_name
on student(name);

-- display indexes 
SHOW INDEX FROM student;

-- drop indexes 
ALTER table student
DROP INDEX index_name;

-------------------------------------------
--                              PROCEDURES
DELIMITER //
CREATE PROCEDURE pro_name()
BEGIN
SELECT * FROM student;
END//

DELIMITER ;
CALL pro_name;

-----------------------
--                              FUNCTION
DELIMITER //

CREATE FUNCTION sum_num(a INT , b INT)
RETURNs INT 
DETERMINISTIC 
BEGIN
RETURN a+b ;
END//

DELIMITER;
SELECT sum_num(4,7);


CREATE DATABASE project_sql_103;
