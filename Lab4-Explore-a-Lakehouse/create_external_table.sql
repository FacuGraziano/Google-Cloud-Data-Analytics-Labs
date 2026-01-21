/* LAB: Explore a Lakehouse
   Este código crea una tabla externa en BigQuery apuntando a datos 
   almacenados en Google Cloud Storage (Data Lake).
*/

CREATE OR REPLACE EXTERNAL TABLE `thelook_gcda.external_inventory_items`
OPTIONS (
  format = 'CSV',
  uris = ['gs://[TU_BUCKET_NAME]/inventory_items.csv'],
  skip_leading_rows = 1
);

-- Consulta para verificar que podemos leer el Data Lake desde BigQuery
SELECT 
  product_id, 
  product_name, 
  cost 
FROM 
  `thelook_gcda.external_inventory_items` 
WHERE 
  cost > 50
LIMIT 10;
