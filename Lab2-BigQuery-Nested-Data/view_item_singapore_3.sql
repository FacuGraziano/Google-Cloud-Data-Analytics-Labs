SELECT
event.event_date,
event_name,
geo.country,
item.item_name
from `thelook_gcda.ga4_events` as event
INNER JOIN unnest(items) as item
WHERE
event_name = 'view_item'
AND geo.country = 'Singapore'
AND item.item_name = 'Google Dino Game Tee';
