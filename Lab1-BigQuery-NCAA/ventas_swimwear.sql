SELECT o.order_id,p.name,p.brand,o.sale_price,o.created_at, o.status
FROM `thelook_gcda.order_items` as o
JOIN `thelook_gcda.products` as p ON o.product_id=p.id
WHERE UPPER(p.category) like "SWIM"
AND UPPER(o.status) NOT in ('RETURNED','CANCELED','CANCELLED')
AND o.created_at >= '2023-06-01'
AND o.created_at < '2023-07-01';
