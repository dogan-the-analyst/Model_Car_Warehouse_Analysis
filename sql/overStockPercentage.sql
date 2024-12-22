SELECT 
    p.productName,
    p.productLine,
    p.warehouseCode,
    SUM(od.quantityOrdered) AS totalOrdered,
    p.quantityInStock,
    ROUND((100 * p.quantityInStock) / SUM(od.quantityOrdered)) AS overStockPercentage
FROM 
    products p
LEFT JOIN 
    orderdetails od 
ON 
    p.productCode = od.productCode
GROUP BY 
    p.productName
ORDER BY 
    overStockPercentage DESC
;