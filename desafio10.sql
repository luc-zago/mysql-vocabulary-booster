SELECT p.ProductName AS "Produto",
MIN(od.Quantity) AS "Mínima",
MAX(od.Quantity) AS "Máxima",
AVG(od.Quantity) AS "Média"
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS od ON p.ProductID = od.ProductID
GROUP BY p.ProductName
HAVING AVG(od.Quantity) > 20
ORDER BY AVG(od.Quantity), p.ProductName;
