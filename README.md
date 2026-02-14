# 🏥 Hospital Management System – SQL Data Analytics Project

## 📌 Project Overview

This project is an end-to-end SQL data analytics case study built using a Hospital Management dataset. The objective of this project is to clean the data, organize it into structured tables, and analyze hospital operations using PostgreSQL to answer important business questions.

The project demonstrates core data analyst skills including:

- Data cleaning and formatting using Excel
- Database design and relational table creation
- Writing optimized SQL queries
- Generating actionable business insights
- Translating raw healthcare data into management-level decisions

The analysis focuses on improving:

- Patient management efficiency
- Doctor performance evaluation
- Appointment optimization
- Treatment demand tracking
- Revenue and billing performance monitoring

---

## 🗂️ Dataset Description

The dataset consists of 5 relational tables:

### 👥 Patients
Contains demographic information, insurance details, registration dates, and contact information.

### 👨‍⚕️ Doctors
Includes doctor profiles, specialization, years of experience, hospital branch, and contact details.

### 📅 Appointments
Stores appointment schedules, visit reasons, appointment status (Scheduled, Completed, Cancelled, No-show), and doctor-patient relationships.

### 💉 Treatments
Tracks treatment types, descriptions, treatment dates, and associated costs.

### 💳 Billing
Captures billing amounts, payment methods, and payment status (Paid, Pending, Failed) to analyze hospital revenue performance.

## 🧩 Data Modeling (Logical Structure)

Patients ──< Appointments >── Doctors  
                 │  
                 │  
             Treatments  
                 │  
              Billing  

Relationship Rules:

- One patient can have multiple appointments.
- One doctor can handle multiple appointments.
- One appointment can include multiple treatments.
- Each treatment generates one billing record.
- Billing records are linked to treatments and patients.

The database structure follows 3rd Normal Form (3NF) to reduce redundancy and maintain data integrity.
## 🧹 Data Cleaning Process

Data cleaning was performed using Microsoft Excel before importing the dataset into PostgreSQL.

The key cleaning steps included:

- Merged first name and last name into a single `name` column
- Standardized gender values (M/F → Male/Female)
- Converted all date columns to ISO format (YYYY-MM-DD)
- Removed duplicate records based on unique IDs
- Ensured cost and billing amount columns were formatted as numeric values
- Verified consistency in appointment status and payment status values

## 📊 Business Questions & Insights

### 👥 1 Patient Table – Insights

#### Business Questions:

- How many patients are registered in total?
- What is the gender distribution of patients?
- Which address/city has the highest number of patients?
- Which age group visits the hospital most frequently?
- Which insurance providers are most used?

#### Key Insights:

- Total registered patients: **50**
- Male patients (**31**) are higher than female patients (**19**)
- **321 Maple Dr** has the highest number of patients (**19**)
- Age group **36–60** visits the hospital most frequently (**21 patients**)
- **MedCare Plus** and **WellnessCorp** are the most used insurance providers

### 👨‍⚕️ 2 Doctor Table – Insights

#### Business Questions:

- How many doctors are working in the hospital?
- Which specialization has the most doctors?
- What is the average years of experience?
- Which hospital branch has the most doctors?
- Which doctor contributes the highest revenue?

#### Key Insights:

- Total doctors working in the hospital: **10**
- **Pediatrics** is the specialization with the highest number of doctors
- The average experience of doctors is **21 years**
- **Central Hospital** has the highest number of doctors
- Revenue contribution varies across doctors based on specialization and appointment volume
 ### 📅 3 Appointment Table – Insights

#### Business Questions:

- How many appointments were Scheduled vs Completed vs Cancelled vs No-show?
- What are the top reasons for visits?
- What is the No-Show Rate?
- Which day of the week has the highest patient traffic?

#### Key Insights:

- Appointment statuses are relatively evenly distributed across **Scheduled, Completed, and Cancelled**
- **Checkups and Consultations** are the most common reasons for visits
- The No-Show rate stands at **26%**, indicating a significant opportunity to improve appointment adherence and scheduling efficiency
- **Wednesday and Tuesday** record the highest patient traffic, suggesting mid-week peak demand
 ### 💉 4 Treatment Table – Insights  

#### Business Questions:

- Which treatment types are most common?  
- What is the average treatment cost?  
- What is the monthly distribution of treatments?  
- Which treatment type generates the highest demand?  

### Key Insights:

- Chemotherapy and X-Ray are the most frequently performed treatments
- The average treatment cost is $2,756 
- Treatment activity peaked in April 2023 (25 treatments).  
- January recorded 20 treatments, while March and May recorded 19 each
- The lowest treatment volume was observed in September 2023 (11 treatments)
- Chemotherapy generates the highest overall demand among all treatment types
### 💳 5 Billing Table – Insights  

#### Business Questions:

- What is the total revenue generated?  
- How many payments are Paid / Pending / Failed?  
- Which payment method is most used?  
- Which treatment has the highest average earning?  

### Key Insights:

- The hospital generated total revenue of ₹173,424+.  
- Payment statuses are fairly distributed, with Pending (69), Failed (67), and Paid (64).  
- Credit Card is the most preferred payment method (75 transactions).  
- MRI treatments generate the highest average revenue among all treatment types.
## 🧠 Overall Business Impact  

This analysis supports hospital management by:

- Understanding patient demographics and demand patterns  
- Identifying peak appointment days for better resource allocation  
- Monitoring no-show rates to improve scheduling efficiency  
- Evaluating doctor performance and specialization demand  
- Analyzing treatment profitability to support strategic decisions  
- Strengthening financial planning through revenue and payment analysis
  ## 🛠️ Tools & Technologies  

- Microsoft Excel – Data source and data cleaning  
- PostgreSQL – Data modeling and SQL analysis  
- GitHub – Project documentation and version control 
  ## 🎯 Skills Demonstrated  
- Data Cleaning & Preparation (Excel)  
- Relational Database Design (3NF)  
- Advanced SQL (Joins, Subqueries, GROUP BY, CASE)  
- Date & Time Functions (DATE_TRUNC, EXTRACT, AGE)  
- KPI Development & Business Data Analysis
  ## 📌 Conclusion  

This project presents a complete SQL-based analytics workflow, from data cleaning and relational modeling to business insight generation.It highlights the ability to structure raw healthcare data, 
perform analytical queries, and extract meaningful insights that support operational and financial decision-making.

 
