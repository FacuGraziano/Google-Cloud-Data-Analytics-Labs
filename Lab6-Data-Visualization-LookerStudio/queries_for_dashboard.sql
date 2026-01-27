/* LAB: Build a Data Dashboard in Looker Studio
   Esta consulta une datos de pedidos y productos para 
   analizar el rendimiento de ventas por categoría.
*/

SELECT
  t1.order_id,
  t1.created_at,
  t1.sale_price,
  t2.name AS product_name,
  t2.category AS product_category,
  t2.brand AS product_brand
FROM
  `thelook_gcda.order_items` AS t1
INNER JOIN
  `thelook_gcda.products` AS t2
  ON t1.product_id = t2.id
WHERE
  t1.status = 'Complete';
