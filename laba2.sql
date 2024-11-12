CREATE TABLE procedure(
id bigint NOT NULL PRIMARY KEY,
procedure_name varchar(100),
procedure_description text,
procedure_duration time
);

CREATE TABLE treatment(
id bigint NOT NULL PRIMARY KEY,
treatment_name varchar(100),
treatment_type varchar(100),
treatment_dosage varchar(500)
);

CREATE TABLE patient(
id bigint NOT NULL PRIMARY KEY,
patient_name varchar(100),
last_name varchar(100),
patronymic varchar(100),
phone_number int,
email varchar(100),
address varchar(500),
birthday date
);

CREATE TABLE department(
id int NOT NULL PRIMARY KEY,
name varchar(100),
specialization varchar(100),
wards_quantity int,
bed_quantity int,
free_bed_quantity int,
patients_quantity int,
head_department varchar(256),
phone_number int,
employee_quantity int
)

CREATE TABLE doctor(
id int NOT NULL PRIMARY KEY,
name varchar(100),
last_name varchar(100),
patronymic varchar(100),
address varchar(100),
department_id int,
FOREIGN KEY (department_id) 
REFERENCES department(id)
ON DELETE SET NULL,
position varchar(100),
birthday date,
phone_number int,
email varchar(100)
);

CREATE TABLE medical_record(
id bigint NOT NULL PRIMARY KEY,
diagnosis varchar(256),
hospitalisation_duration time,
hospital_ward int,
doctor_id int,
FOREIGN KEY (doctor_id) 
REFERENCES doctor(id)
ON DELETE SET NULL,
patient_id bigint,
FOREIGN KEY (patient_id) 
REFERENCES patient(id)
ON DELETE CASCADE,
treatment_id bigint,
FOREIGN KEY (treatment_id) 
REFERENCES treatment(id)
ON DELETE CASCADE,
procedure_id bigint,
FOREIGN KEY (procedure_id) 
REFERENCES procedure(id)
ON DELETE CASCADE
);

