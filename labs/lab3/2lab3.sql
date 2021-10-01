-- 2
-- a. For each department, find the average salary of instructors in that
-- department and list them in ascending order. Assume that every
-- department has at least one instructor;
select dept_name,avg(salary) from instructor
group by dept_name
order by avg(instructor.salary) asc;
-- b. Find the building where the biggest number of courses takes place;
select building from course,department
where course.dept_name = department.dept_name
group by department.building
having count(course.dept_name) IN (select max(cnt.nested) from
                                 (select count(course.dept_name) as nested from course,department
                                        where department.dept_name = course.dept_name
                                        group by department.building) as cnt);
-- c. Find the department with the lowest number of courses offered;
select course.dept_name from course,department
where course.dept_name = department.dept_name
group by course.dept_name
having count(course.dept_name) IN (select min(cnt.nested) from
                                 (select count(course.dept_name) as nested from course,department
                                        where department.dept_name = course.dept_name
                                        group by course.dept_name) as cnt)
order by course.dept_name asc;
-- d. Find the ID and name of each student who has taken more than 3 courses
-- from the Computer Science department;
select id,name from student
where id IN (select nested2.id from
            (select student.id, count(student.id) as nested
                from student,takes,course
                where course.dept_name='Comp. Sci.'
                and takes.course_id=course.course_id
                and student.id=takes.id
                group by student.id)
as nested2
where nested2.nested>3);
-- e. Find all instructors who work either in Biology, Philosophy, or Music
-- departments;
select * from instructor
where dept_name='Biology'
or dept_name='Philosophy'
or dept_name='Music';
-- f. Find all instructors who taught in the 2018 year but not in the 2017 year;
select  distinct instructor.name,instructor.dept_name,instructor.salary from instructor,teaches
where instructor.id = teaches.id
and teaches.year=2018
and teaches.id not in (select teaches.id from teaches,instructor
    where instructor.id = teaches.id
    and teaches.year = 2017);



