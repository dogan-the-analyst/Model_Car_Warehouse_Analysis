SELECT 
    country,
    COUNT(customerNumber) AS totalCustomer
FROM 
	customers
GROUP BY
	country
ORDER BY
	totalCustomer DESC
;