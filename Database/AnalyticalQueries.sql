-- 19. Count total patients
SELECT COUNT(*) FROM Patients;
-- 20. Count total appointments per status
SELECT Status, COUNT(*) FROM Appointments GROUP BY Status;
-- 21. Total billing amount per patient
SELECT PatientID, SUM(Amount) AS Total_Billed FROM Billing GROUP BY PatientID;
-- 22. List doctors with number of patients they treated (from records)
SELECT DoctorID, COUNT(DISTINCT PatientID) AS PatientCount FROM MedicalRecords GROUP BY DoctorID;
-- 23. Show patients with no billing yet
SELECT * FROM Patients WHERE PatientID NOT IN (SELECT DISTINCT PatientID FROM Billing);
-- 24. Show doctors without appointments
SELECT * FROM Doctors WHERE DoctorID NOT IN (SELECT DISTINCT DoctorID FROM Appointments);
-- 25. Fetch medication prescribed to a patient
SELECT p.PatientID, m.MedicationName 
FROM Prescriptions pr, MedicalRecords mr, Medications m, Patients p
WHERE pr.RecordID = mr.RecordID 
  AND pr.MedicationID = m.MedicationID 
  AND mr.PatientID = p.PatientID
  AND p.PatientID = 201;
-- 26. Show department and count of doctors
SELECT dp.DepartmentName, COUNT(*) AS DoctorCount 
FROM Doctors d, Departments dp
WHERE d.DepartmentID = dp.DepartmentID
GROUP BY dp.DepartmentName;
-- 27. List of appointments in next 5 days
SELECT * FROM Appointments WHERE AppointmentDate BETWEEN SYSDATE AND SYSDATE + 5;
-- 28. Find the most recent billing entry
SELECT * FROM Billing ORDER BY BillingDate DESC FETCH FIRST 1 ROWS ONLY;
-- 29. Get patients whose contact starts with '9'
SELECT * FROM Patients WHERE ContactNumber LIKE '9%';
-- 30. Count total prescriptions issued
SELECT COUNT(*) AS TotalPrescriptions FROM Prescriptions;
-- 31. Total amount billed by payment status
SELECT PaymentStatus, SUM(Amount) FROM Billing GROUP BY PaymentStatus;
-- 32. Delete an appointment (if needed)
DELETE FROM Appointments WHERE AppointmentID = 306;
-- 33. Update department name (e.g., correction)
UPDATE Departments SET DepartmentName = 'General Medicine' WHERE DepartmentName = 'Cardiology';
-- 34. Delete a medication
DELETE FROM Medications WHERE MedicationID = 506;
-- 35. Show all prescriptions for patient 201
SELECT pr.* 
FROM Prescriptions pr, MedicalRecords mr
WHERE pr.RecordID = mr.RecordID AND mr.PatientID = 201;

