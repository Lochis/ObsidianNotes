CREATE TABLE Student
(StudentId NUMBER(9) PRIMARY KEY,
Lastname VARCHAR2(50) NOT NULL,
Firstname VARCHAR2(50) NOT NULL,
ProgramCode Number(4),
Email VARCHAR(29)
CONSTRAINT chk_email CHECK (Email LIKE '%@%.%') -- Wild card, @, wild card, . for ending, and wild card
);