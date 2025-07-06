
# 🏥 Healthcare Database System

### 👨‍💻 Project Members
This SQL project was completed by the following members with equal efforts:
- **Krish Vanza** (GitHub: @Krish-Vanza) 
- **Shubh Gupta** (GitHub: @g9shubh)  
- **Harshit Yadav**  (GitHub: @HarshetYadav) 

---

## 📖 Overview

This project implements a centralized **Healthcare Database System** using SQL to manage hospital operations efficiently. It aims to eliminate manual errors and streamline processes like appointments, billing, prescriptions, and medical record management.

---



## 🗂️ Database Schema

### Entities (Tables):
- `Patients`
- `Departments`
- `Doctors`
- `Appointments`
- `MedicalRecords`
- `Medications`
- `Prescriptions`
- `Billing`

---


## 🔄 CRUD Operations

Examples:
- **SELECT**: View patients, doctors, and billing info  
- **INSERT**: Add new patients, doctors, medications, appointments  
- **UPDATE**: Modify contact info, appointment status, or assigned doctors  
- **DELETE**: Remove billing or prescription records  

---

## 📊 Analytical Queries

Useful reports:
- Total patients and appointments by status  
- Billing summaries by payment status  
- Doctors who treated patients (and those who didn't)  
- Patients without billing  
- Department-wise doctor count  
- Appointments scheduled in the next 5 days  

---

## 🧹 Normalization

### ✅ First Normal Form (1NF):
- Atomic values only; no lists or sets stored in fields  

### ✅ Second Normal Form (2NF):
- Removed partial dependencies using single-column primary keys  

### ✅ Third Normal Form (3NF):
- Removed transitive dependencies (e.g., moved `DepartmentName` to its own table)

---

## 🛠 Development Tools

- **Oracle SQL**
- **SQL Developer** (or any RDBMS interface)
- **PowerPoint** (for ER Diagram)

---

## ▶️ How to Use

1. Execute the schema and trigger definitions.
2. Run the provided `INSERT` statements to initialize sample data.
3. Use the provided queries to test CRUD and analytics functionality.
4. Optionally, connect to a front-end interface for real-time interaction.

---

## 🧬 ER Diagram

A visual ER diagram is included in the file:  
📄 `Healthcare_Database_System.pptx`

---

