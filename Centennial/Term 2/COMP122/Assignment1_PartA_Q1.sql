CREATE TABLE STUDENT
(StudentId NUMBER(9) PRIMARY KEY,
Lastname VARCHAR2(50) NOT NULL,
Firstname VARCHAR2(50) NOT NULL,
ProgramCode Number(4),
Email VARCHAR(30)
-- Wild card, @, wild card, . for ending, and wild card
CONSTRAINT chk_email CHECK (Email LIKE '%@%.%') 
);

INSERT INTO STUDENT(StudentId, Lastname, Firstname, ProgramCode, Email)
VALUES(300111222, 'Anna', 'Rav', 3409, 'ranna@my.centennialcollege.ca');

INSERT ALL 
    INTO STUDENT (StudentId, Lastname, Firstname, ProgramCode, Email) VALUES (300123123, 'Chong', 'Raul', 3409, 'rchong@my.centennialcollege.ca')
    INTO STUDENT (StudentId, Lastname, Firstname, ProgramCode, Email) VALUES (300124124, 'Vasudevan', 'Hima', 3408, 'hvasu@my.centennialcollege.ca')
SELECT 1 FROM DUAL;