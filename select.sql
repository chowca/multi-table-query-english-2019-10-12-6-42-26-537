# 1.Query the existence of 1 course
select * from student_course where courseID = 1;

# 2.Query the presence of both 1 and 2 courses
select * from student_course where courseID = 1 or courseID =2;

# 3.Query the student number and student name and average score of students whose average score is 60 or higher.
select name, studentId, avg(score) from student_course, student where studentId = id group by name, studentId having avg(score) >= 60;

# 4.Query the SQL statement of student information that does not have grades in the student_course table
select * from student where not exists (select distinct studentId from student_course where studentId = id);

# 5.Query all SQL with grades
select * from student, course, student_course where student.id = studentid and course.id = courseid;

# 6.Inquire about the information of classmates who have numbered 1 and also studied the course numbered 2
select distinct student.* from student, student_course where student.id = studentId and id = 1 and courseid = 2;

# 7.Retrieve 1 student score with less than 60 scores in descending order
select score from student_course where score < 60 order by score desc limit 1;

# 8.Query the average grade of each course. The results are ranked in descending order of average grade. When the average grades are the same, they are sorted in ascending order by course number.
select courseid, avg(score) from student_course group by courseid order by 2 desc, 1 asc;

# 9.Query the name and score of a student whose course name is "Math" and whose score is less than 60
select student.name, score from student, course, student_course where student.id = studentid and course.id = courseid and course.name = 'Math' and score < 60; 