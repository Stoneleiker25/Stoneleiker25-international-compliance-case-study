SELECT *
FROM dbo.vw_CleanedWiseStudyCase
ORDER BY customer_id;

SELECT customer_type, COUNT(*) AS total
FROM dbo.vw_CleanedWiseStudyCase
GROUP BY customer_type
ORDER BY total DESC;

SELECT current_address_country, COUNT(*) AS total
FROM dbo.vw_CleanedWiseStudyCase
GROUP BY current_address_country
ORDER BY total DESC;

SELECT COUNT(*) AS total_rows
FROM dbo.vw_CleanedWiseStudyCase;

UPDATE dbo.[Wise Study Case]
SET customer_type = 'Unknown'
WHERE customer_id IN (53, 60, 67);

SELECT *
FROM dbo.vw_CleanedWiseStudyCase
WHERE customer_id IN (19, 53, 60, 67);

UPDATE dbo.[Wise Study Case]
SET customer_type = 'Unknown'
WHERE customer_type IS NULL;

SELECT COUNT(*) AS total_rows
FROM dbo.vw_CleanedWiseStudyCase;

SELECT customer_type, COUNT(*) AS count
FROM dbo.vw_CleanedWiseStudyCase
GROUP BY customer_type
ORDER BY count DESC;

SELECT current_address_country, COUNT(*) AS count
FROM dbo.vw_CleanedWiseStudyCase
GROUP BY current_address_country
ORDER BY count DESC;

SELECT 
    current_address_country,
    customer_type,
    COUNT(*) AS count
FROM dbo.vw_CleanedWiseStudyCase
GROUP BY current_address_country, customer_type
ORDER BY current_address_country, customer_type;

