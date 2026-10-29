
CREATE TABLE Department (
 Department_ID INT PRIMARY KEY,
 Department_Name VARCHAR(30) NOT NULL
);
CREATE TABLE Faculty (
 Faculty_ID INT PRIMARY KEY,
 Faculty_Name VARCHAR(30) NOT NULL,
 Department_ID INT,
 FOREIGN KEY (Department_ID)
 REFERENCES Department(Department_ID)
);
CREATE TABLE Student (
 Student_ID INT PRIMARY KEY,
 Student_Name VARCHAR(30) NOT NULL,
 Department_ID INT,
 FOREIGN KEY (Department_ID)
 REFERENCES Department(Department_ID)
);
CREATE TABLE Course (
 Course_ID INT PRIMARY KEY,
 Course_Name VARCHAR(30) NOT NULL,
 Faculty_ID INT,
 FOREIGN KEY (Faculty_ID)
 REFERENCES Faculty(Faculty_ID)
);
CREATE TABLE Enrollment ( Student_ID INT,
 Course_ID INT,
 PRIMARY KEY (Student_ID, Course_ID),
 FOREIGN KEY (Student_ID)
 REFERENCES Student(Student_ID),
 FOREIGN KEY (Course_ID)
 REFERENCES Course(Course_ID)
);
DESCRIBE Department;
DESCRIBE Faculty;
DESCRIBE Student;
DESCRIBE Course;
DESCRIBE Enrollment;
OUTPUT
The normalized database contains these tables:
Table Main attributes
Department Department_ID, Department_Name
Faculty Faculty_ID, Faculty_Name, Department_ID
Student Student_ID, Student_Name, Department_ID
Course Course_ID, Course_Name, Faculty_ID
Enrollment Student_ID, Course_ID
