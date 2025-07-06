-- 1. Patients Table
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    FullName VARCHAR2(100) NOT NULL,
    DOB DATE,
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')),
    ContactNumber VARCHAR2(15) CHECK (LENGTH(ContactNumber) BETWEEN 10 AND 15),
    LastUpdated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UpdatedBy VARCHAR2(100)
);
-- Trigger to validate DOB
CREATE OR REPLACE TRIGGER trg_check_dob
BEFORE INSERT OR UPDATE ON Patients
FOR EACH ROW
BEGIN
    IF :NEW.DOB > SYSDATE THEN
        RAISE_APPLICATION_ERROR(-20001, 'DOB cannot be in the future.');
    END IF;
END;
/
-- 2. Departments Table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR2(50) NOT NULL CHECK (DepartmentName IN (
        'Cardiology', 'Neurology', 'Pediatrics', 'Orthopedics', 'Oncology', 'Emergency'
    )),
    HeadDoctorID INT,
    LastUpdated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UpdatedBy VARCHAR2(100)
);
-- 3. Doctors Table
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    FullName VARCHAR2(100) NOT NULL,
    Specialty VARCHAR2(50) NOT NULL,
    Phone VARCHAR2(15) CHECK (LENGTH(Phone) BETWEEN 10 AND 15),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    LastUpdated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UpdatedBy VARCHAR2(100)
);

-- 4. Appointments Table
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATE,
    Status VARCHAR2(20) CHECK (Status IN ('Scheduled', 'Completed', 'Cancelled')),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID),
    LastUpdated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UpdatedBy VARCHAR2(100)
);
-- Trigger to validate Appointment Date
CREATE OR REPLACE TRIGGER trg_check_appointment_date
BEFORE INSERT OR UPDATE ON Appointments
FOR EACH ROW
BEGIN
    IF :NEW.AppointmentDate < TRUNC(SYSDATE) THEN
        RAISE_APPLICATION_ERROR(-20002, 'Appointment date cannot be in the past.');
    END IF;
END;
/
-- 5. MedicalRecords Table
CREATE TABLE MedicalRecords (
    RecordID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    Diagnosis CLOB NOT NULL,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID),
    LastUpdated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UpdatedBy VARCHAR2(100)
);
-- 6. Medications Table
CREATE TABLE Medications (
    MedicationID INT PRIMARY KEY,
    MedicationName VARCHAR2(100) NOT NULL,
    LastUpdated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UpdatedBy VARCHAR2(100)
);
-- 7. Prescriptions Table
CREATE TABLE Prescriptions (
    PrescriptionID INT PRIMARY KEY,
    RecordID INT,
    MedicationID INT,
    FOREIGN KEY (RecordID) REFERENCES MedicalRecords(RecordID),
    FOREIGN KEY (MedicationID) REFERENCES Medications(MedicationID),
    LastUpdated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UpdatedBy VARCHAR2(100)
);
-- 8. Billing Table
CREATE TABLE Billing (
    BillID INT PRIMARY KEY,
    PatientID INT,
    Amount NUMBER(10, 2) CHECK (Amount >= 0),
    BillingDate DATE NOT NULL,
    PaymentStatus VARCHAR2(20) CHECK (PaymentStatus IN ('Pending', 'Paid', 'Cancelled')),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    LastUpdated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UpdatedBy VARCHAR2(100)
);
