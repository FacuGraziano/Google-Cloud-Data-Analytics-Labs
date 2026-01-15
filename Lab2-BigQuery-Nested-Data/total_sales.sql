SELECT country, order_year, sum(cast(total_sales as decimal)) as sum_total_sales
FROM `thelook_gcda.orders_by_state`
GROUP BY country, order_year
ORDER BY country asc, order_year desc;
