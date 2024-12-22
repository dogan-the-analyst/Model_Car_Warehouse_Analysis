SELECT
	w.warehouseName,
	p.productLine,
    SUM(p.quantityInStock) AS totalStock
FROM
	products p
LEFT JOIN
	warehouses w
ON
	w.warehouseCode = p.warehouseCode
GROUP BY
	w.warehouseName,
    p.productLine
ORDER BY 
	totalStock DESC
;