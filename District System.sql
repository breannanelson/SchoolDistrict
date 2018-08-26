CREATE DATABASE District_School_System;

USE District_School_System;



CREATE TABLE person (
	
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(30) NOT NULL,
    lastName VARCHAR(30) NOT NULL,
    phoneNum VARCHAR(30),
    sex VARCHAR(1) NOT NULL
    
);

CREATE TABLE location (
	
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    street VARCHAR(50) NOT NULL,
    zip INTEGER NOT NULL,
    state VARCHAR(2) NOT NULL
    
);

CREATE TABLE admin (
	
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    personId INTEGER NOT NULL,
    
	FOREIGN KEY (personId)
        REFERENCES person(id)
        ON DELETE CASCADE
);


CREATE TABLE district (
	
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    districtName VARCHAR(50) NOT NULL,
    locationId INTEGER NOT NULL,
    adminId INTEGER NOT NULL,
    
	FOREIGN KEY (locationId)
        REFERENCES location(id)
        ON DELETE CASCADE,
	
	FOREIGN KEY (adminId)
        REFERENCES admin(id)
        ON DELETE CASCADE
);


CREATE TABLE school (
	
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    schoolName VARCHAR(50) NOT NULL,
    locationId INTEGER NOT NULL,
    districtId INTEGER NOT NULL,
    
	FOREIGN KEY (locationId)
        REFERENCES location(id)
        ON DELETE CASCADE,
	
	FOREIGN KEY (districtId)
        REFERENCES district(id)
        ON DELETE CASCADE
);


CREATE TABLE teacher (
	
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    teahcerName VARCHAR(30) NOT NULL,
    gradeLevel INTEGER NOT NULL,
    personId INTEGER NOT NULL,
    schoolId INTEGER NOT NULL,
    
	FOREIGN KEY (personId)
        REFERENCES person(id)
        ON DELETE CASCADE,
	
	FOREIGN KEY (schoolId)
        REFERENCES school(id)
        ON DELETE CASCADE
);

CREATE TABLE student (
	
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    studentName VARCHAR(30) NOT NULL,
    gradeLevel INTEGER NOT NULL,
    personId INTEGER NOT NULL,
    schoolId INTEGER NOT NULL,
    teacherId INTEGER NOT NULL,
	
    FOREIGN KEY (personId)
        REFERENCES person(id)
        ON DELETE CASCADE,
	
	FOREIGN KEY (schoolId)
        REFERENCES school(id)
        ON DELETE CASCADE,
	
	FOREIGN KEY (teacherId)
        REFERENCES teacher(id)
        ON DELETE CASCADE
);