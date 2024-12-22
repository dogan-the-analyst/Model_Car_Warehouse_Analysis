SELECT 
    customers.country,
    COUNT(customers.country) AS totalOrder
FROM
	orders
LEFT JOIN
	customers
ON 
	customers.customerNumber = orders.customerNumber
GROUP BY
	customers.country
ORDER BY
	totalOrder DESC
;