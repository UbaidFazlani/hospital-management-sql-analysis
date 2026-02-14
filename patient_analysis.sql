--Data Analysis Questions 
--1. How many patients are registered in the hospital?
SELECT COUNT(*) AS total_patients
FROM patients;

-- 2. What is the gender distribution of patients?
SELECT gender, COUNT(*) AS total
FROM patients
GROUP BY gender;

-- 3.How many patients visited more than once?
SELECT 
    COUNT(*) AS repeat_patients
FROM (
    SELECT patient_id
    FROM appointments
    GROUP BY patient_id
    HAVING COUNT(*) > 1
) sub;

-- 4.Which age group visits the hospital most frequently?
SELECT 
    CASE
        WHEN EXTRACT(YEAR FROM AGE(CURRENT_DATE, date_of_birth)) < 18 THEN '0-17'
        WHEN EXTRACT(YEAR FROM AGE(CURRENT_DATE, date_of_birth)) BETWEEN 18 AND 35 THEN '18-35'
        WHEN EXTRACT(YEAR FROM AGE(CURRENT_DATE, date_of_birth)) BETWEEN 36 AND 60 THEN '36-60'
        ELSE '60+'
    END AS age_group,
    COUNT(*) AS patient_count
FROM patients
GROUP BY age_group
ORDER BY patient_count DESC;

--5. What percentage of patients use insurance?
SELECT 
    insurance_provider,
    COUNT(*) AS patient_count
FROM patients
GROUP BY insurance_provider
ORDER BY patient_count DESC;

-- 6. In which month were the most patients registered?
SELECT 
    TO_CHAR(DATE_TRUNC('month', registration_date), 'Mon YYYY') AS month,
    COUNT(*) AS registrations
FROM patients
GROUP BY DATE_TRUNC('month', registration_date)
ORDER BY registrations DESC;

--7.Which patients generated the highest total billing amount?
SELECT 
    p.name,
    SUM(b.amount) AS total_billed
FROM billing b
JOIN patients p
ON b.patient_id = p.patient_id
GROUP BY p.name
ORDER BY total_billed DESC
LIMIT 5;

--8.Which address/city has the highest number of patients?
SELECT address, COUNT(*) AS total_patients
FROM patients
GROUP BY address
ORDER BY total_patients DESC

--9. What is the gender distribution of patients?

SELECT 
    gender,
    COUNT(*) AS patient_count
FROM patients
GROUP BY gender
ORDER BY patient_count DESC;

--10.Which address/city has the highest number of patients?
SELECT address, COUNT(*) AS total_patients
FROM patients
GROUP BY address
ORDER BY total_patients DESC





