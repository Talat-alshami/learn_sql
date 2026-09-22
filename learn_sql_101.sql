-- create database with case 
CREATE DATABASE if NOT EXISTS learn_sql_101;
----------------------------------------------------
-- use spicefic database
USE DATABASE;
----------------------------------------------
-- show all database  or schema in server
 SHOW DATABASES; 
 SHOW SCHEMAS ;
---------------------------------------------
 -- delete database form server 
 DROP DATABASE learn_sql_101;
----------------------------------------------------------
 /* the comment in sql
 1- to comment one line we use -- in beging
 2- to comment many lines we use /* in beging and at the end */
----------------------------------------------------------------------------

 --                              انشاء الجداول والتعامل معهم                         -- 

/*                                    انواع البيانات في SQL 
1- النوع النصي (STRING) وينقم الى :
ا - CHAR(size)
ب - VARCHAR(size) ويعتبر اكبر حجما 

2 - النوع الرقمي (NUMERIC) :
A -  INT(size)
B - DOUBLE(size, d ) d يعني حجم العدد العشري بعد الفاصله
C - DECIMAL(size , d ) شبية بالدبل ولكن يستخدم في القيم المالية لانة دقيق

3 - DATA / TIME
A - DATA : تاريخ بالتنسيق YYYY-MM-DD
B - DATATIME : تاريخ ووقت بالتنسيق YYYY-MM-DD HH:MM:SS

4- BOOLEAN 
A - BOOL :نوع منطقي يحتوي على 
1- TRUE OR 1 
2- FALSE OR 0 
*/
-------------------------------------------------------------------------
/*
 PRIMARY KEY   ID يجعل من قيمة المتغير في العمود فريدة ولا يمكن تكرارها ويستخدم غالبا في
 AUTO_INCREMENT يجعل القيم تنشاء تلقائيا بشكل متسلسل 
*/
--------------------------------------
--create table with case 
CREATE TABLE IF NOT EXISTS student (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    age INT
);

-------------------------
--                                         DISPLAYING                                --

-- DISPLAY COLUMNS DITALES IN THE TABLE 
SHOW COLUMNS FROM test2;

-- DISPALY TABLES IN THE DATABASE 
SHOW TABLES ;

/* DISPLAY DATA IN THE TABLE  :

we use  SELECT column names FROM table name  to display spicefic columns data from table 
to show all columns we use SELECT * FROM table name ,, * means all columns 
*/

SELECT name FROM test1 ;

-------------------             MODIFAY AND ALTER IN TABLE             ---------------- 
CREATE TABLE test1(
    id INT ,
    name VARCHAR(50)
);
-----------------------

-- HOW TO ADD PRIMRY KEY TO COLUMN IN TABLE IS ALREADY EXISTS 

ALTER TABLE test1 
ADD PRIMARY KEY (id); 
----------------
-- ADD NEW COLUMN TO THE TABLE 
ALTER TABLE test1 
ADD age DOUBLE(5,2);

----------------
-- MODIFY DATA TYPE FOR COLUMN 
ALTER TABLE test1 
MODIFY COLUMN age INT;
--------------
--DELETE column 
ALTER TABLE test1 
DROP COLUMN age ;

--------------------
-- rename tabel 
ALTER TABLE test1 
RENAME to test;

--------------
-- delete table from database 
DROP TABLE test;

----------------------               التعامل مع البيانات            -----------------------
CREATE TABLE IF NOT EXISTS test2 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    age INT,
    gender VARCHAR(10)
);

--                                  1- DATA INSERTING :
-- A - INSERT SINGLE DATA :
INSERT INTO test2(name,age)
VALUES('ali',20);
SELECT * FROM test2;

-- B - INSERT WITH MANY DATA
INSERT INTO test2(name , age , gender)
VALUES
('TALAT',20,'MALE'),
('HAZEM',18,'MALE');

//*              المعاملات المستخدمة في قواعد البيانات لاختبار شرط معين 
A- العوامل المنطقية 
1- AND 
2- OR 
3- BETWEEN
4- IN 

B- عوامل المقارنة 
1- =   , 2- > , 3- < , 4- <= , 5- >= , 6 - != او <> NOT EQULA

C- العوامل الرياضية 
1- + , 2- - , 3- * , 4- / 

*/


--                                     DATA DISPLAYING                                  --
--      WITH WHERE : عرض البيانات على حسب شرط معين 
SELECT * FROM test2
WHERE ID = 4;

SELECT * FROM test2 
WHERE name = 'ali';

--      with ORDER BY : عرض البيانات حسب ترتيب معين 
-- ASC = تعني تصاعدي 
-- DESC = تعني تنازلي
SELECT * FROM test2 
ORDER BY AGE ASC;

SELECT * FROM test2
ORDER BY name DESC;

-- ex 
SELECT * FROM test2
WHERE name = 'ali'
ORDER BY age ;

---------------------               DATA MODIFY                             ------------------
-- MODIFY DATA WITH CASE 
UPDATE test2 
SET AGE = 21 -- البيانات جديدة 
WHERE name = 'talat';  -- موفع التعديل 


-------------------------     DELETE DATA                          ------------------------
-- DELETE TATA WITH CASE 
DELETE FROM test2
WHERE id = 2;