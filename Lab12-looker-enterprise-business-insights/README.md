# Lab: Business Insights Dashboard with Looker Enterprise

Este proyecto consistió en el diseño y construcción de un dashboard interactivo en **Looker Enterprise** para ayudar al departamento de ventas a rastrear el rendimiento histórico e identificar tendencias críticas de ingresos.

## 📊 Visualizaciones Implementadas

Para cumplir con los requerimientos de Kiran (Stakeholder), se desarrollaron tres visualizaciones clave en la interfaz **Explore**:

1.  **Trend of Total Revenue over Time:** Un gráfico de líneas que desglosa los ingresos totales por categoría de producto, permitiendo identificar qué sectores están creciendo.
2.  **Average Sale Price by Product:** Un gráfico de barras (Bar Chart) para analizar el valor de mercado de cada ítem.
3.  **Total Revenue by Country:** Un gráfico de columnas (Column Chart) para visualizar la distribución geográfica de las ventas.

## ⚙️ Funcionalidades Técnicas

### Modelado y Agregación
- **Métricas Utilizadas:** Se aplicaron agregaciones de `SUM` para el ingreso total y `AVERAGE` para los precios de venta.
- **Dimensiones:** Se segmentaron los datos por `Product Category`, `Product Name` y `Country`.

### Interactividad (Digital Consumption)
- **Filtro Dinámico:** Se implementó un **Filtro de País (Country Filter)**. Esto permite que el usuario final personalice toda la vista del dashboard con un solo clic, enfocándose en mercados específicos.
- **Exploración:** Uso de la UI de Looker Enterprise para transformar tablas de datos crudos en componentes visuales interactivos.



## 💡 Impacto en el Negocio
Este dashboard permite al equipo de ventas:
- Detectar estacionalidad en las ventas por categoría.
- Comparar el rendimiento entre diferentes mercados globales.
- Optimizar estrategias de precios basadas en el precio promedio de venta.
