
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
		("Eastshore Elementary School", 1, 1);
        

