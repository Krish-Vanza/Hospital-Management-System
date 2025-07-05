INSERT INTO Departments VALUES (1, 'Cardiology', NULL, CURRENT_TIMESTAMP, 'admin');
INSERT INTO Departments VALUES (2, 'Neurology', NULL, CURRENT_TIMESTAMP, 'admin');
INSERT INTO Departments VALUES (3, 'Pediatrics', NULL, CURRENT_TIMESTAMP, 'admin');
INSERT INTO Departments VALUES (4, 'Orthopedics', NULL, CURRENT_TIMESTAMP, 'admin');
INSERT INTO Departments VALUES (5, 'Oncology', NULL, CURRENT_TIMESTAMP, 'admin’);

INSERT INTO Doctors VALUES (101,'Dr. Mehta','Cardiologist','9876543210',1,CURRENT_TIMESTAMP,'admin');
INSERT INTO Doctors VALUES (102,'Dr. Nair','Neurologist','9123456789',2,CURRENT_TIMESTAMP,'admin');
INSERT INTO Doctors VALUES (103,'Dr. Khan','Pediatrician','9012345678',3,CURRENT_TIMESTAMP,'admin');
INSERT INTO Doctors VALUES (104,'Dr. Bose','Orthopedic','8899001122',4,CURRENT_TIMESTAMP,'admin');
INSERT INTO Doctors VALUES (105,'Dr. Dutta’,'Oncologist','9001112233',5,CURRENT_TIMESTAMP,'admin’);

INSERT INTO Patients VALUES (201, 'Ananya Sharma', TO_DATE('2000-05-15', 'YYYY-MM-DD'), 'F', '9999988888', CURRENT_TIMESTAMP, 'admin');
INSERT INTO Patients VALUES (202, 'Ravi Kumar', TO_DATE('1985-10-30', 'YYYY-MM-DD'), 'M', '8888877777', CURRENT_TIMESTAMP, 'admin');
INSERT INTO Patients VALUES (203, 'Sneha Roy', TO_DATE('1992-03-12', 'YYYY-MM-DD'), 'F', '7777766666', CURRENT_TIMESTAMP, 'admin');
INSERT INTO Patients VALUES (204, 'Amit Verma', TO_DATE('1978-01-25', 'YYYY-MM-DD'), 'M', '6666655555', CURRENT_TIMESTAMP, 'admin');
INSERT INTO Patients VALUES (205, 'Pooja Das', TO_DATE('2001-12-02', 'YYYY-MM-DD'), 'F', '9999900000', CURRENT_TIMESTAMP, 'admin');
INSERT INTO Patients VALUES (206, 'Krish Vanza', TO_DATE('2005-12-02', 'YYYY-MM-DD'), 'M', '9997800000', CURRENT_TIMESTAMP, 'admin’);

INSERT INTO Appointments VALUES (301, 201, 101, SYSDATE + 1, 'Scheduled', CURRENT_TIMESTAMP, 'admin');
INSERT INTO Appointments VALUES (302, 202, 102, SYSDATE + 2, 'Scheduled', CURRENT_TIMESTAMP, 'admin');
INSERT INTO Appointments VALUES (303, 203, 103, SYSDATE + 3, 'Scheduled', CURRENT_TIMESTAMP, 'admin');
INSERT INTO Appointments VALUES (304, 204, 104, SYSDATE + 4, 'Scheduled', CURRENT_TIMESTAMP, 'admin');
INSERT INTO Appointments VALUES (305, 205, 105, SYSDATE + 5, 'Scheduled', CURRENT_TIMESTAMP, 'admin’);

INSERT INTO MedicalRecords VALUES (401, 201, 101, 'Diagnosed with hypertension.', CURRENT_TIMESTAMP, 'admin');
INSERT INTO MedicalRecords VALUES (402, 202, 102, 'Migraines under observation.', CURRENT_TIMESTAMP, 'admin');
INSERT INTO MedicalRecords VALUES (403, 203, 103, 'Routine child checkup.', CURRENT_TIMESTAMP, 'admin');
INSERT INTO MedicalRecords VALUES (404, 204, 104, 'Fracture treatment completed.', CURRENT_TIMESTAMP, 'admin');
INSERT INTO MedicalRecords VALUES (405, 205, 105, 'Chemotherapy ongoing.', CURRENT_TIMESTAMP, 'admin');

INSERT INTO Prescriptions VALUES (601, 401, 501, CURRENT_TIMESTAMP, 'admin');
INSERT INTO Prescriptions VALUES (602, 402, 502, CURRENT_TIMESTAMP, 'admin');
INSERT INTO Prescriptions VALUES (603, 403, 503, CURRENT_TIMESTAMP, 'admin');
INSERT INTO Prescriptions VALUES (604, 404, 504, CURRENT_TIMESTAMP, 'admin');
INSERT INTO Prescriptions VALUES (605, 405, 505, CURRENT_TIMESTAMP, 'admin');
  
INSERT INTO Billing VALUES (701, 201, 1200.00, SYSDATE, 'Pending', CURRENT_TIMESTAMP, 'admin');
INSERT INTO Billing VALUES (702, 202, 950.00, SYSDATE, 'Paid', CURRENT_TIMESTAMP, 'admin');
INSERT INTO Billing VALUES (703, 203, 400.00, SYSDATE, 'Cancelled', CURRENT_TIMESTAMP, 'admin');
INSERT INTO Billing VALUES (704, 204, 1500.00, SYSDATE, 'Pending', CURRENT_TIMESTAMP, 'admin');
INSERT INTO Billing VALUES (705, 205, 2000.00, SYSDATE, 'Paid', CURRENT_TIMESTAMP, 'admin');
