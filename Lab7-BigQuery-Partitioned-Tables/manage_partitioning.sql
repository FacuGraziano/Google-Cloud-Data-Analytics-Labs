/* LAB: Manage a Partitioned Table in BigQuery
   Objetivo: Optimizar costos mediante el particionamiento por tiempo.
*/

-- 1. Crear una tabla particionada por la columna 'timestamp'
-- Esto divide físicamente los datos por día.
CREATE OR REPLACE TABLE `ecommerce.partitioned_orders`
PARTITION BY DATE(created_at)
AS
SELECT * FROM `data-to-insights.ecommerce.orders`;

-- 2. Consulta de verificación (Filtrado por partición)
-- Esta consulta solo escanea la "partición" de enero de 2023, 
-- reduciendo drásticamente los bytes procesados comparado con una tabla normal.
SELECT 
    order_id, 
    status, 
    created_at
FROM 
    `ecommerce.partitioned_orders`
WHERE 
    created_at BETWEEN '2023-01-01' AND '2023-01-31';

-- 3. Consultar metadatos de las particiones
-- Útil para verificar cuántas filas hay en cada partición y el almacenamiento usado.
SELECT
  partition_id,
  total_rows,
  total_billable_bytes
FROM
  `ecommerce.__TABLES_GYTI__` -- Reemplaza con el dataset correspondiente si cambia
WHERE
  table_id = 'partitioned_orders';
