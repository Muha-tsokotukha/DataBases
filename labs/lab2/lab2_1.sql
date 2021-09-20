-- 1
 -- a.
CREATE DATABASE university_staff;
DROP DATABASE  lab2w3;
CREATE TABLE studs( Stud_Id int, Name VARCHAR(255) );
ALTER TABLE studs  ADD COLUMN  gpa float(2);

 -- b.
INSERT INTO studs VALUES ( 151421, ‘Arman’, 3.88 );
DELETE FROM studs WHERE name=’Arman’;
UPDATE studs SET id_stud = 45784565 WHERE name=’Arman’;
SELECT * FROM studs;



