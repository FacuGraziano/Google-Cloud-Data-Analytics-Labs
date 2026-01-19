SELECT
 p.category,
 FORMAT_TIMESTAMP("%H:%M", sc.created_at) as added_at_minute,
 sum(sc.quantity) as sum_quantity
FROM
 `thelook_gcda.shopping_cart` sc
INNER JOIN
 `thelook_gcda.products` p
ON
 p.id = sc.product_id
WHERE
 p.category = 'Jeans'
 AND sc.created_at > timestamp_sub(current_timestamp(), INTERVAL 1 HOUR)

GROUP BY p.category, added_at_minute
ORDER BY added_at_minute DESC;
