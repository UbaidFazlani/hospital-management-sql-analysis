Data Analysis Questions

-- How many doctors are working in the hospital?
SELECT COUNT(*) AS total_doctors
FROM doctors;

-- Which specialization has the most doctors?
SELECT 
    specialization,
    COUNT(*) AS doctor_count
FROM doctors
GROUP BY specialization
ORDER BY doctor_count DESC
LIMIT 1;

--  What is the average years of experience?
SELECT 
    ROUND(AVG(years_experience), 1) AS avg_experience
FROM doctors;

--  Which hospital branch has the most doctors?
SELECT 
    hospital_branch,
    COUNT(*) AS doctor_count
FROM doctors
GROUP BY hospital_branch
ORDER BY doctor_count DESC
LIMIT 1;

-- Which doctor generates the highest revenue?
SELECT 
    d.name,
    SUM(b.amount) AS total_revenue
FROM billing b
JOIN treatments t
    ON b.treatment_id = t.treatment_id
JOIN appointments a
    ON t.appointment_id = a.appointment_id
JOIN doctors d
    ON a.doctor_id = d.doctor_id
GROUP BY d.name
ORDER BY total_revenue DESC
LIMIT 1;


