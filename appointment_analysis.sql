--Data Analysis Questions 
--1.How many appointments were Scheduled vs Completed vs Cancelled vs No-show?
SELECT 
    status,
    COUNT(*) AS appointment_count
FROM appointments
GROUP BY status
ORDER BY appointment_count DESC;

--2 What are the top reasons for visits?
SELECT 
    reason_for_visit,
    COUNT(*) AS visit_count
FROM appointments
GROUP BY reason_for_visit
ORDER BY visit_count DESC

--3. Which doctors handle the most appointments?
SELECT 
    d.name,
    COUNT(a.appointment_id) AS total_appointments
FROM appointments a
JOIN doctors d
    ON a.doctor_id = d.doctor_id
GROUP BY d.name
ORDER BY total_appointments DESC
limit 1;

--4. Which day of the week has the highest patient traffic?
SELECT 
    TO_CHAR(appointment_date, 'Day') AS day_of_week,
    COUNT(*) AS total_appointments
FROM appointments
GROUP BY day_of_week
ORDER BY total_appointments DESC;

--5. What is the appointment completion rate?
SELECT 
    ROUND(
        COUNT(*) FILTER (WHERE status = 'Completed') * 100.0 
        / COUNT(*),
    2) AS completion_rate_percentage
FROM appointments;

--6.What is the No-Show Rate?


SELECT 
    ROUND(
        COUNT(*) FILTER (WHERE status = 'No-show') * 100.0 
        / COUNT(*),
    2) AS no_show_percentage
FROM appointments;

--7. What time of day has the highest appointment load?

SELECT 
    EXTRACT(HOUR FROM appointment_time) AS hour,
    COUNT(*) AS appointment_count
FROM appointments
GROUP BY hour
ORDER BY appointment_count DESC;



