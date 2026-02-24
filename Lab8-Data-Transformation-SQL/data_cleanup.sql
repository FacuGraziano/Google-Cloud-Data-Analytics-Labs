/* LAB: Practice Transformation Methods
   Enfoque: Corrección de tipos de datos y concatenación de campos.
*/

-- 1. Corregir tipos de datos (CAST)
-- Muchas veces los números vienen como texto y hay que transformarlos para operar.
SELECT 
    CAST(product_id AS INT64) AS product_id_numeric,
    CAST(sale_price AS FLOAT64) AS price_float,
    UPPER(name) AS product_name_upper
FROM 
    `data-to-insights.ecommerce.products`
WHERE 
    sale_price IS NOT NULL;

-- 2. Crear campos combinados (CONCAT)
-- Útil para crear identificadores únicos o etiquetas de visualización.
SELECT
    product_id,
    CONCAT(name, " - ", category) AS product_full_description,
    COALESCE(category, "Sin Categoría") AS category_fixed
FROM
    `data-to-insights.ecommerce.products`;

-- 3. Limpieza de strings (TRIM y REPLACE)
-- Para quitar espacios en blanco o caracteres extraños en los nombres.
SELECT
    TRIM(name) AS cleaned_name,
    REPLACE(brand, "@", "") AS cleaned_brand
FROM
    `data-to-insights.ecommerce.products`
LIMIT 100;
