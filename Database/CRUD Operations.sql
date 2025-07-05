-- 1. View all patients
SELECT * FROM Patients;
-- 2. View all doctors in the Neurology department
SELECT dr.* 
FROM Doctors dr, Departments dp
WHERE dr.DepartmentID = dp.DepartmentID AND dp.DepartmentName = 'Neurology';
-- 3. View all appointments for a specific patient
SELECT * FROM Appointments WHERE PatientID = 201;
-- 4. List all appointments scheduled today or later
SELECT * FROM Appointments WHERE AppointmentDate >= TRUNC(SYSDATE);
-- 5. View billing info of all patients with amount > 1000
SELECT * FROM Billing WHERE Amount > 1000;
-- 6. Update contact number of a patient
UPDATE Patients SET ContactNumber = '9000000001', UpdatedBy = 'admin' WHERE PatientID = 201;
-- 7. Change doctor for an appointment
UPDATE Appointments SET DoctorID = 103, UpdatedBy = 'admin' WHERE AppointmentID = 302;
-- 8. Mark appointment as completed
UPDATE Appointments SET Status = 'Completed', UpdatedBy = 'admin' WHERE AppointmentID = 301;
-- 9. Cancel an appointment
UPDATE Appointments SET Status = 'Cancelled', UpdatedBy = 'admin' WHERE AppointmentID = 303;
-- 10. Delete a billing record
DELETE FROM Billing WHERE BillID = 705;
-- 11. Delete a prescription entry
DELETE FROM Prescriptions WHERE PrescriptionID = 605;
-- 12. Add a new patient
INSERT INTO Patients VALUES (206, 'Kiran Patel', TO_DATE('1990-11-20','YYYY-MM-DD'), 'M', '9876541230', CURRENT_TIMESTAMP, 'admin');
-- 13. Add a new doctor
INSERT INTO Doctors VALUES (106, 'Dr. Rao', 'Physician', '9011223344', 1, CURRENT_TIMESTAMP, 'admin');
-- 14. Schedule a new appointment
INSERT INTO Appointments VALUES (306, 206, 106, SYSDATE + 2, 'Scheduled', CURRENT_TIMESTAMP, 'admin');
-- 15. Add a new medication
INSERT INTO Medications VALUES (506, 'Losartan', CURRENT_TIMESTAMP, 'admin');
-- 16. Add a medical record for a new patient
INSERT INTO MedicalRecords VALUES (406, 206, 106, 'Routine Checkup', CURRENT_TIMESTAMP, 'admin');
-- 17. Assign prescription
INSERT INTO Prescriptions VALUES (606, 406, 506, CURRENT_TIMESTAMP, 'admin');
-- 18. Insert billing info
INSERT INTO Billing VALUES (706, 206, 800.00, SYSDATE, 'Pending', CURRENT_TIMESTAMP, 'admin');
