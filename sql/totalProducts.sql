SELECT 
	w.warehouseCode,
    w.warehouseName,
    COUNT(p.productCode) AS totalProducts,
    SUM(p.quantityInStock) AS totalQuantityInStock,
    w.warehousePctCap AS storagePercentage,
    FLOOR(SUM(p.quantityInStock) * (100 - w.warehousePctCap) / 100) AS stockAvailability
FROM 
	products p 
LEFT JOIN 
	warehouses w 
ON 
	w.warehouseCode = p.warehouseCode
GROUP BY
	w.warehouseCode, 
    w.warehouseName
ORDER BY 
	totalQuantityInStock DESC
;