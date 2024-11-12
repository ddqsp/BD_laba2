ALTER TABLE department
ALTER COLUMN head_department TYPE VARCHAR(100);

ALTER TABLE medical_record 
ADD COLUMN date_of_record date;

ALTER TABLE patient 
ADD COLUMN passport_id int UNIQUE;

ALTER TABLE patient 
ADD CONSTRAINT passport_id CHECK (passport_id<1000000000);

ALTER TABLE patient 
DROP COLUMN patronymic;

ALTER TABLE department
ADD CONSTRAINT hospitalisation_available CHECK ( bed_quantity < patients_quantity);

ALTER TABLE patient 
RENAME COLUMN patient_name TO name; 
