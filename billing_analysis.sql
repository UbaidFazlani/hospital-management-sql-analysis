--Data Analysis Questions 

--1. What is the total revenue generated?
SELECT 
    ROUND(SUM(amount), 2) AS total_revenue
FROM billing
WHERE payment_status = 'Paid';

--2.How many payments are Paid / Pending / Failed?
SELECT 
    payment_status,
    COUNT(*) AS payment_count
FROM billing
GROUP BY payment_status
ORDER BY payment_count DESC;

 --3.Which payment method is most used?
SELECT 
    payment_method,
    COUNT(*) AS usage_count
FROM billing
GROUP BY payment_method
ORDER BY usage_count DESC;

 --4.Which treatment has the highest average earning?
SELECT 
    t.treatment_type,
    ROUND(AVG(b.amount), 2) AS avg_earning
FROM billing b
JOIN treatments t
    ON b.treatment_id = t.treatment_id
WHERE b.payment_status = 'Paid'
GROUP BY t.treatment_type
ORDER BY avg_earning DESC;
