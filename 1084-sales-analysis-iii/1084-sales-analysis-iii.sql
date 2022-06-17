SELECT Sales.product_id, Product.product_name 
FROM Sales LEFT JOIN Product
ON Sales.product_id = Product.product_id
GROUP BY Sales.product_id
HAVING 
min(Sales.sale_date) >= '2019-01-01' AND
max(Sales.sale_date) <= '2019-03-31';