# Lab 4: Explorando un Data Lakehouse con BigQuery

En este laboratorio, implementé una arquitectura de **Data Lakehouse** utilizando Google Cloud. El objetivo principal fue consultar datos almacenados en **Google Cloud Storage (GCS)** directamente desde **BigQuery** sin necesidad de mover o cargar los archivos físicamente.

### Conceptos Clave:
* **Data Lake:** Utilicé GCS como almacenamiento escalable y de bajo costo para archivos en bruto (CSV).
* **External Tables:** Creé tablas externas en BigQuery que actúan como un "puente" hacia los archivos en el bucket.
* **Lakehouse Architecture:** Combiné la flexibilidad del almacenamiento de archivos con la potencia de análisis de SQL.

### Tareas realizadas:
1. **Configuración de Almacenamiento:** Identificación de archivos de inventario en buckets de Cloud Storage.
2. **Creación de Tablas Externas:** Definición de esquemas en BigQuery apuntando a URIs de Cloud Storage.
3. **Consulta de Datos:** Ejecución de queries SQL para analizar el inventario de *TheLook eCommerce* integrando datos internos y externos.

### Beneficios identificados:
* **Reducción de Costos:** No se paga por el almacenamiento duplicado en BigQuery.
* **Agilidad:** Los datos están disponibles para análisis inmediatamente después de ser subidos al bucket.
* **Mantenimiento:** El esquema se puede actualizar sin necesidad de re-importar grandes volúmenes de datos.
