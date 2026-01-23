/* LAB: Navigate Dataplex
   Esta consulta se utiliza para verificar el acceso a los datos 
   centralizados y gobernados a través de Dataplex.
*/

SELECT
  customer_id,
  first_name,
  last_name,
  email
FROM
  `[PROYECTO_ID].customers_data_lake.customers_table` -- Ejemplo de tabla gobernada
WHERE
  email IS NOT NULL
LIMIT 100;
