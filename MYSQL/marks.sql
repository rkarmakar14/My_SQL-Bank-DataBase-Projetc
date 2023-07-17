create database college;
use college;
create table students(id int,Name varchar(55),Subject varchar(55),
marks int);

INSERT INTO Students (id, name, Subject, marks)
VALUES
  (1, 'John Doe', 'Mathematics', 80),
  (2, 'Jane Smith', 'English', 75),
  (3, 'Mike Johnson', 'Physics', 85),
  (4, 'Emily Brown', 'History', 70),
  (5, 'David Wilson', 'Mathematics', 90),
  (6, 'Sarah Thompson', 'English', 80),
  (7, 'Daniel Davis', 'Physics', 95),
  (8, 'Olivia Taylor', 'History', 65),
  (9, 'James Anderson', 'Mathematics', 85),
  (10, 'Emma Clark', 'English', 75),
  (11, 'Andrew Lee', 'Physics', 90),
  (12, 'Sophia Walker', 'History', 80),
  (13, 'William Martinez', 'Mathematics', 95),
  (14, 'Ava Hernandez', 'English', 80),
  (15, 'Joseph Nelson', 'Physics', 70),
  (16, 'Mia Thompson', 'History', 85),
  (17, 'Ethan White', 'Mathematics', 75),
  (18, 'Charlotte Hall', 'English', 90),
  (19, 'Benjamin Scott', 'Physics', 80),
  (20, 'Amelia King', 'History', 95),
  (21, 'Alexander Wright', 'Mathematics', 80),
  (22, 'Harper Adams', 'English', 70),
  (23, 'Henry Rodriguez', 'Physics', 85),
  (24, 'Evelyn Parker', 'History', 75),
  (25, 'Michael Allen', 'Mathematics', 90);
  select * from students;
  select *, dense_rank()
  over(partition by Subject order by marks desc)
  from students;
  select marks, subject from students order by marks  
  group by subject;
  # two aggregate function not be possible