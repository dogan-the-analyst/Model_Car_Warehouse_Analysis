SELECT 
	o.orderNumber,
    o.orderDate,
    o.shippedDate,
    DATEDIFF(o.shippedDate, o.orderDate) AS dateDifference,
    p.productLine,
    w.warehouseName,
    c.country
FROM 
	orders o
LEFT JOIN 
	orderdetails od 
ON 
	od.orderNumber = o.orderNumber
LEFT JOIN
	products p
ON
	p.productCode = od.productCode
LEFT JOIN 
	warehouses w
ON
	w.warehouseCode = p.warehouseCode
LEFT JOIN
	customers c
ON	
	c.customerNumber = o.customerNumber
ORDER BY 
	dateDifference DESC
;