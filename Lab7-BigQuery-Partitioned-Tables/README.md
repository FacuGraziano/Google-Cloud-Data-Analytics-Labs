# Gestión de Tablas Particionadas en BigQuery

En este laboratorio, implementé estrategias de **Particionamiento** para optimizar el rendimiento de las consultas y reducir los costos de procesamiento en Google Cloud Platform.

### ¿Qué es el Particionamiento?
Es una técnica que divide las tablas grandes en segmentos más pequeños basados en una columna (generalmente de fecha o timestamp). Esto permite que BigQuery lea únicamente los datos relevantes para una consulta, en lugar de escanear la tabla completa.

### Tareas realizadas:
- **Creación de Tablas:** Migración de datos desde una tabla no particionada a una nueva tabla estructurada con `PARTITION BY`.
- **Análisis de Costos:** Verificación de la reducción de bytes escaneados al realizar filtros por fecha.
- **Mantenimiento:** Uso de consultas de metadatos para inspeccionar el estado y el tamaño de las particiones creadas.

### Beneficios obtenidos:
1. **Reducción de Costos:** Se paga menos por consulta al filtrar por el campo de partición.
2. **Mejor Rendimiento:** Las consultas sobre grandes volúmenes de datos históricos se ejecutan en segundos al ignorar datos fuera del rango solicitado.
3. **Escalabilidad:** Estructura preparada para manejar conjuntos de datos que crecen diariamente.
