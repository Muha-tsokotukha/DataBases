-- 3
-- a. Find all students who have taken Comp. Sci. course and got an excellent
-- grade (i.e., A, or A-) and sort them alphabetically;
select distinct student.name,student.dept_name,student.tot_cred from takes,student,course
where student.id=takes.id
and course.dept_name='Comp. Sci.'
and (takes.grade='A-'
or takes.grade='A')
and course.course_id=takes.course_id
order by student.name asc;
-- b. Find all advisors of students who got grades lower than B on any class;
select distinct advisor.s_id,advisor.i_id from advisor,student,takes
where student.id = takes.id
and student.id = advisor.s_id
and (takes.grade is null
         or (takes.grade!='A'
                 and takes.grade!='A-'
                 and takes.grade!='B'
                 and takes.grade!='B+'));
-- c. Find all departments whose students have never gotten an F or C grade;
select * from department
where dept_name
not in (select department.dept_name from student,department,takes
    where department.dept_name=student.dept_name
    and student.id=takes.id
    and (takes.grade='F' or takes.grade='C'));
-- e. Find all courses offered in the morning hours (i.e., courses ending before
-- 13:00);
select distinct course.course_id,course.dept_name,course.title from course,section,time_slot
where section.time_slot_id=time_slot.time_slot_id
and end_hr<=13
and section.course_id=course.course_id;
-- d. Find all instructors who have never given an A grade in any of the courses
-- they taught;
select * from instructor
where instructor.id
not in (select instructor.id from teaches,instructor,takes
    where teaches.course_id=takes.course_id
      and takes.grade='A'
      and instructor.id=teaches.id);
