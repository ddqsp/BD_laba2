CREATE ROLE doctor;
CREATE ROLE hospital_admin;
CREATE ROLE director;

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO director;
GRANT SELECT, INSERT, UPDATE ON patient TO hospital_admin;
GRANT SELECT doctor, department, medical_record TO hospital_admin;
GRANT SELECT, INSERT, UPDATE ON medical_record, treatment, procedure, doctor TO doctor;
GRANT SELECT patient, department TO doctor;

CREATE USER doctor_user WITH PASSWORD 'doctor_password';
CREATE USER admin_user WITH PASSWORD 'admin_password';
CREATE USER director_user WITH PASSWORD 'director_password';

GRANT doctor TO doctor_user;
GRANT hospital_admin TO admin_user;
GRANT director TO director_user;
