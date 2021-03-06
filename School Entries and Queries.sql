
USE district_school_system;

INSERT INTO 
		 person (firstName, lastName, phoneNum, sex) 
VALUES   
		("Abby", "Peterson", "(949) 872-9822", "F"),
		("Armand", "Say", "(949) 853-1243", "M"),
        ("John", "Smith", "(714)", "M"),
        ("Breanna", "Nielson", "(949) 728-8274", "F"),
        ("Ashley", "Ma", "(714) 228-7279", "F"),
        ("Derek", "Baker", "(949) 264-8299", "M");
        
        
INSERT INTO 
		 location (street, zip, state) 
VALUES   
		("155 Eastshore", 92604, "CA"),
        ("14361 Yale Avenue", 92604, "CA");
        
        
INSERT INTO 
		 admin (title, personId) 
VALUES   
		("Director of Administation", 1);
        

INSERT INTO 
		 district (districtName, locationId, adminId) 
VALUES   
		("Irvine Unified School District", 2, 1);

INSERT INTO 
		 school (schoolName, locationId, districtId) 
VALUES   
		("Eastshore Elementary School", 1, 1);
        
	
INSERT INTO 
		 teacher (gradeLevel, personId, schoolId) 
VALUES   
		(4, 5, 1);
        

INSERT INTO 
		 student (gradeLevel, personId, schoolId, teacherId) 
VALUES   
		(4, 2, 1, 1);
        

UPDATE student SET personId = 3 WHERE id = 1;


INSERT INTO 
		 student (gradeLevel, personId, schoolId, teacherId) 
VALUES   
		(4, 6, 1, 1);
        
        
SELECT * FROM teacher;

SELECT * FROM student;
DELETE FROM student WHERE id = 4;

UPDATE person SET phoneNum = '(714) 987-6725' WHERE id = 3;

SELECT * FROM person;

# Return all teachers first and last night
SELECT person.firstName AS 'First Name', person.lastName AS 'Last Name' 
FROM teacher INNER JOIN person ON teacher.personId = person.id;

# Amount of students in the fourth grade
SELECT COUNT(*)
FROM student
WHERE gradeLevel = 4;


# Amount of students in the seventh grade
SELECT COUNT(*)
FROM student
WHERE gradeLevel = 7;

# Return all student's names and the names/locations of their schools
SELECT person.firstName AS 'First Name',
	   person.lastName AS 'Last Name',  
       school.schoolName AS 'School Name', 
       location.street, location.zip, 
       location.state
FROM ((person INNER JOIN student ON person.id = student.personId) 
	 INNER JOIN location ON location.id = student.schoolId) 
     INNER JOIN school ON school.locationId = location.id;







