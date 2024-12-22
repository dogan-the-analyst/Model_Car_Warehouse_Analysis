SELECT 
    p.productName,
    p.productLine,
    p.warehouseCode,
    SUM(od.quantityOrdered) AS totalOrdered,
    p.quantityInStock
FROM 
    products p
LEFT JOIN 
    orderdetails od 
ON 
    p.productCode = od.productCode
GROUP BY 
    p.productCode, 
    p.productName
HAVING 
	totalOrdered > quantityInStock
ORDER BY 
    totalOrdered DESC
;