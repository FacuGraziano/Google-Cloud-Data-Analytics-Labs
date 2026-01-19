# Lab 3: Identificación de fuentes de datos Batch y Streaming

En este laboratorio trabajé con el dataset de **TheLook eCommerce** para clasificar el origen y la frecuencia de los datos.

### Aprendizajes clave:
* **Batch Data:** Identifiqué tablas de inventario y catálogos que se actualizan por lotes (baja frecuencia, alta latencia).
* **Streaming Data:** Analicé tablas de eventos de usuario (clics, sesiones) que ingresan en tiempo real a BigQuery (alta frecuencia, baja latencia).
* **Análisis de Metadatos:** Utilicé la pestaña de "Detalles" en BigQuery para verificar las fechas de última modificación y determinar la frescura de los datos.

### Diferencias identificadas:
| Tipo | Fuente de ejemplo | Uso principal |
| :--- | :--- | :--- |
| **Batch** | `products`, `distribution_centers` | Análisis histórico y reportes mensuales. |
| **Streaming** | `events`, `orders` | Monitoreo en vivo y alertas de stock. |
