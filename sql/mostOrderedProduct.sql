SELECT
	p.productLine,
    SUM(od.quantityOrdered) AS totalQuantityOrdered
FROM 
	orderdetails od
LEFT JOIN
	products p
ON 
	p.productCode = od.productCode
GROUP BY
	p.productLine
ORDER BY
	totalQuantityOrdered DESC
;