 select courses.course_name, instructors.name
 from courses
 left join instructors on courses.instructor_id = instructors.id;
 
 select students.first_name, students.last_name, courses.course_name
 from students
 left join enrollments on students.id = enrollments.student_id
 left join courses on enrollments.course_id = courses.id;
 
 select students.first_name, students.last_name, projects.project_name
 from students
 join projects on students.id = projects.student_id;
 
 select students.first_name, students.last_name, grades.grade
 from students
 join grades on students.id = grades.student_id;
 
 select courses.course_name, courses.category, instructors.name
 from courses
 join instructors on courses.instructor_id = instructors.id;
 
 select students.first_name, students.last_name, courses.course_name, enrollments.last_attendance_date
 from students
 join enrollments on students.id = enrollments.student_id
 join courses on enrollments.course_id = courses.id;
 
 select courses.course_name, grades.grade
 from courses
 join grades on courses.id = grades.course_id;
 
 select students.first_name, students.last_name, enrollments.semester
 from students
 join enrollments on students.id = enrollments.student_id;
 
 select courses.course_name, students.first_name, students.last_name, grades.grade
 from courses
 join grades on courses.id = grades.course_id
 join students on grades.student_id = students.id;
 
 SELECT instructors.name, courses.course_name
FROM instructors
JOIN courses ON instructors.id = courses.instructor_id
WHERE courses.category = 'Computer Science';

select instructors.name, courses.course_name
from instructors
left join courses ON instructors.id = courses.instructor_id;

select distinct students.first_name, students.last_name
from students
join enrollments ON students.id = enrollments.student_id
join courses ON enrollments.course_id = courses.id
where courses.category = 'Computer Science';

select students.first_name, students.last_name, courses.course_name, instructors.name
from students
join enrollments ON students.id = enrollments.student_id
join courses ON enrollments.course_id = courses.id
join instructors ON courses.instructor_id = instructors.id;

SELECT students.first_name, students.last_name, courses.course_name, instructors.name
from students
join enrollments on students.id = enrollments.student_id
join courses on courses.id = enrollments.course_id
join instructors on instructors.id = courses.instructor_id;

select courses.course_name, count(enrollments.student_id)
from courses
left join enrollments on courses.id = enrollments.course_id
group by courses.id, courses.course_name;

select instructors.name, COUNT(courses.id)
from instructors
left join courses on instructors.id = courses.instructor_id
group by instructors.id, instructors.name;

select students.first_name, students.last_name, courses.course_name, grades.grade
from students
join grades ON students.id = grades.student_id
join courses ON grades.course_id = courses.id
where grades.grade = 'A';

select students.first_name, students.last_name, COUNT(enrollments.course_id)
from students
left join enrollments ON students.id = enrollments.student_id
group by students.id, students.first_name, students.last_name;

select students.first_name, students.last_name, projects.project_name, courses.course_name
from students
join projects ON students.id = projects.student_id
join enrollments ON students.id = enrollments.student_id
join courses ON enrollments.course_id = courses.id;
























 
 
 
 
 
 
 
 
 
 
 
 





















