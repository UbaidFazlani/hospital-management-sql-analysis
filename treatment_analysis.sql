--Data Analysis Questions 

--1.Which treatment types are most common?
SELECT 
    treatment_type,
    COUNT(*) AS treatment_count
FROM treatments
GROUP BY treatment_type
ORDER BY treatment_count DESC;

--2. What is the average treatment cost?
SELECT 
    ROUND(AVG(cost), 2) AS avg_treatment_cost
FROM treatments;

--3.What is the monthly distribution of treatments?
SELECT 
    TO_CHAR(DATE_TRUNC('month', treatment_date), 'Mon YYYY') AS month,
    COUNT(*) AS treatment_count
FROM treatments
GROUP BY DATE_TRUNC('month', treatment_date)
ORDER BY DATE_TRUNC('month', treatment_date);

--4.Which treatment type generates the highest demand?
SELECT 
    treatment_type,
    COUNT(*) AS demand_count
FROM treatments
GROUP BY treatment_type
ORDER BY demand_count DESC
LIMIT 1;

--5.Which treatment generates the highest revenue?
SELECT 
    t.treatment_type,
    SUM(b.amount) AS total_revenue
FROM billing b
JOIN treatments t
    ON b.treatment_id = t.treatment_id
GROUP BY t.treatment_type
ORDER BY total_revenue DESC
LIMIT 1;



