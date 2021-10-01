-- 1.
-- a. Find all courses worth more than 3 credits;
select * from course
where credits>3;
-- b. Find all classrooms situated either in ‘Watson’ or ‘Packard’ buildings;
select * from classroom
where (building='Watson' or building='Packard');
-- c. Find all courses offered by the Computer Science department;
select * from course
where dept_name='Comp. Sci.';
-- d. Find all courses offered during fall;
select course.course_id,title,dept_name,credits from course,section
where course.course_id=section.course_id and section.semester='Fall';
-- e. Find all students who have more than 45 credits but less than 90;
select * from student
where (tot_cred>45 and tot_cred<90);
-- f. Find all students whose names end with vowels;
select * from student
where (name like '%a' or
name like '%e' or
name like '%y' or
name like '%u' or
name like '%o' or
name like '%i');
-- g. Find all courses which have course ‘CS-101’ as their prerequisite;
select course.course_id,title,dept_name,credits,prereq_id from course,prereq
where course.course_id=prereq.course_id and prereq_id='CS-101';


