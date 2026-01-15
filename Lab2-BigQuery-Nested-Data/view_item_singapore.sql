SELECT
event_date,
event_name,
geo.country
FROM `thelook_gcda.ga4_events`
WHERE
event_name = 'view_item'
and geo.country = 'Singapore';
