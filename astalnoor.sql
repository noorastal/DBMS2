CREATE OR REPLACE TYPE Staff_T UNDER Person_T (
in_office REF Office_T,
staff_type VARCHAR2(20) ) NOT FINAL /

--------------------------------------------
CREATE TABLE Staff OF Staff_T (
pers_id NOT NULL,
staff_type NOT NULL CHECK (staff_type IN ‘Admin’ ,  ‘Technician’ , ‘Senior_Lecturer’ ,  ‘Associate_Lecturer’ ,  ‘Tutor’) ),
PRIMARY KEY (pers_id) );

--------------------------------------------
CREATE OR REPLACE TYPE Student_T UNDER Person_T  (
year NUMBER,

MEMBER PROCEDURE insert_student (
pers_id IN VARCHAR2,
pers_surname IN VARCHAR2,
pers_fname IN VARCHAR2,
pers_title IN VARCHAR2,
pers_address IN VARCHAR2,
pers_phone IN VARCHAR2,
pers_postcode IN NUMBER,
campus_location IN VARCHAR2,
year IN NUMBER),

MEMBER PROCEDURE delete_student ) /

-------------------------------------------
CREATE TABLE Student OF Student_T (
pers_id NOT NULL,
PRIMARY KEY (pers_id) );

