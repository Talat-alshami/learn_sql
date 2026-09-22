-- create the database
CREATE DATABASE project_sql_101;

-- create student table 
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT ,
    name VARCHAR(50),
    birthdate DATE,
    gender VARCHAR(10),
    enterdate DATE,
    emil VARCHAR(50) UNIQUE ,
    level INT ,
    path VARCHAR(10),
    avrage DOUBLE(50,2)
)

-- create teachers table 
CREATE TABLE teachers(
    id INT PRIMARY KEY AUTO_INCREMENT ,
    name VARCHAR(50),
    birthdate DATE,
    gender VARCHAR(10),
    emil VARCHAR(50) UNIQUE ,
    office_number INT
)

-- create subjecr table 
CREATE TABLE subjects(
    id INT PRIMARY KEY AUTO_INCREMENT ,
    name VARCHAR(50)
)

-- show tables 
SHOW TABLES;

-- insert to students 

INSERT INTO students(name,birthdate,gender,enterdate,emil,level,path,avrage)
VALUES
('Ali Mahmoud', '2005-01-10', 'Male', '2023-09-01', 'ali.m@student.com', 1, 'IT', 85.50),
('Sara Ahmed', '2005-04-15', 'Female', '2023-09-01', 'sara.a@student.com', 1, 'IT', 92.00),
('Omar Hassan', '2004-11-20', 'Male', '2022-09-01', 'omar.h@student.com', 2, 'Science', 78.50),
('Lina Khaled', '2005-07-05', 'Female', '2023-09-01', 'lina.k@student.com', 1, 'Arts', 88.00),
('Yousef Ali', '2003-02-28', 'Male', '2021-09-01', 'yousef.a@student.com', 3, 'Science', 75.00),
('Nour Ibrahim', '2006-09-12', 'Female', '2024-09-01', 'nour.i@student.com', 1, 'IT', 95.50),
('Ahmed Samir', '2004-05-18', 'Male', '2022-09-01', 'ahmed.s@student.com', 2, 'IT', 81.00),
('Mona Tarek', '2005-12-01', 'Female', '2023-09-01', 'mona.t@student.com', 1, 'Science', 89.00),
('Khaled Nabil', '2003-08-25', 'Male', '2021-09-01', 'khaled.n@student.com', 3, 'Arts', 70.50),
('Rania Adel', '2006-03-14', 'Female', '2024-09-01', 'rania.a@student.com', 1, 'IT', 98.00),
('Hassan Omar', '2004-10-30', 'Male', '2022-09-01', 'hassan.o@student.com', 2, 'Science', 84.00),
('Salma Youssef', '2005-06-22', 'Female', '2023-09-01', 'salma.y@student.com', 1, 'Arts', 77.50),
('Tarek Mahmoud', '2003-01-15', 'Male', '2021-09-01', 'tarek.m@student.com', 3, 'IT', 82.00),
('Hana Ali', '2006-11-05', 'Female', '2024-09-01', 'hana.a@student.com', 1, 'Science', 91.50),
('Mahmoud Said', '2004-07-19', 'Male', '2022-09-01', 'mahmoud.s@student.com', 2, 'Arts', 68.00),
('Farah Khalid', '2005-02-08', 'Female', '2023-09-01', 'farah.k@student.com', 1, 'IT', 86.50),
('Samer Nabil', '2003-09-27', 'Male', '2021-09-01', 'samer.n@student.com', 3, 'Science', 79.00),
('Dina Sami', '2006-05-16', 'Female', '2024-09-01', 'dina.s@student.com', 1, 'Arts', 94.00),
('Amr Hassan', '2004-12-03', 'Male', '2022-09-01', 'amr.h@student.com', 2, 'IT', 73.50),
('Yara Tarek', '2005-08-11', 'Female', '2023-09-01', 'yara.t@student.com', 1, 'Science', 87.00),
('Ziad Mahmoud', '2003-04-06', 'Male', '2021-09-01', 'ziad.m@student.com', 3, 'Arts', 80.50),
('Mai Ahmed', '2006-10-29', 'Female', '2024-09-01', 'mai.a@student.com', 1, 'IT', 96.50),
('Bassel Khaled', '2004-03-21', 'Male', '2022-09-01', 'bassel.k@student.com', 2, 'Science', 76.00),
('Jana Ali', '2005-11-14', 'Female', '2023-09-01', 'jana.a@student.com', 1, 'Arts', 83.50),
('Fadi Samir', '2003-06-09', 'Male', '2021-09-01', 'fadi.s@student.com', 3, 'IT', 71.00),
('Reem Nabil', '2006-01-25', 'Female', '2024-09-01', 'reem.n@student.com', 1, 'Science', 90.00),
('Wael Tarek', '2004-09-17', 'Male', '2022-09-01', 'wael.t@student.com', 2, 'Arts', 67.50),
('Aya Mahmoud', '2005-05-02', 'Female', '2023-09-01', 'aya.m@student.com', 1, 'IT', 88.50),
('Sami Khaled', '2003-12-24', 'Male', '2021-09-01', 'sami.k@student.com', 3, 'Science', 85.00),
('Layla Hassan', '2006-07-13', 'Female', '2024-09-01', 'layla.h@student.com', 1, 'Arts', 93.00);

-- insert into teachers 
INSERT INTO teachers(name,birthdate,gender,emil,office_number)
VALUES
('Ahmed Khaled', '1980-05-15', 'Male', 'ahmed.k@school.com', 101),
('Mona Saleh', '1985-08-22', 'Female', 'mona.s@school.com', 102),
('Omar Farooq', '1975-11-10', 'Male', 'omar.f@school.com', 103),
('Sara Nabil', '1990-02-14', 'Female', 'sara.n@school.com', 104),
('Yousef Ibrahim', '1982-09-30', 'Male', 'yousef.i@school.com', 105),
('Laila Hassan', '1988-12-05', 'Female', 'laila.h@school.com', 106),
('Khaled Mansour', '1979-03-18', 'Male', 'khaled.m@school.com', 107),
('Nour Adel', '1992-07-25', 'Female', 'nour.a@school.com', 108),
('Hany Samir', '1984-06-12', 'Male', 'hany.s@school.com', 109),
('Rania Tarek', '1987-10-08', 'Female', 'rania.t@school.com', 110);

-- insert into subjects 
INSERT INTO subjects(name)
VALUES
('Mathematics'),
('Physics'),
('Chemistry'),
('Biology'),
('English'),
('Computer Science');

-- display students table 
SELECT * FROM students;

-- display teacher table
SELECT * FROM teachers;

-- display subjects table 
SELECT * FROM subjects;

-- display students by name order 
SELECT * FROM students
ORDER BY name ASC

SELECT name as'student name ' FROM students;


--- update studen emil
UPDATE students 
SET emil = 'mona@student.com'
WHERE name = 'Mona Tarek';

-- update teacher office numbeer 
UPDATE teachers 
SET office_number = 111
WHERE id = 1; 


-- alter table name 
ALTER TABLE subjects 
RENAME TO subject

