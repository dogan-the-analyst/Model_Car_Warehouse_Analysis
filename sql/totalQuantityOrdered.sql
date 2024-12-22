SELECT 
	w.warehouseCode,
    w.warehouseName, 
    COUNT(od.orderNumber) AS totalOrders, 
    SUM(od.quantityOrdered) AS totalQuantityOrdered
FROM 
    warehouses w
JOIN 
    products p 
ON 
    w.warehouseCode = p.warehouseCode
JOIN 
    orderdetails od 
ON 
    p.productCode = od.productCode
GROUP BY 
    w.warehouseCode, 
    w.warehouseName
ORDER BY 
    totalQuantityOrdered DESC;