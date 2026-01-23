# Lab 5: Navegando por Dataplex para la Gobernanza de Datos

En este laboratorio exploré **Dataplex**, la solución de Google Cloud para la gestión, monitoreo y gobernanza de datos distribuidos en lagos y almacenes de datos.

### Objetivos del Lab:
* **Organización de Datos:** Creación de "Lakes" (Lagos) y "Zones" (Zonas) para organizar la información de la empresa de forma lógica.
* **Data Discovery:** Aprendí cómo Dataplex escanea y cataloga automáticamente los metadatos de los archivos en Cloud Storage.
* **Lineaje de Datos:** Introducción a cómo rastrear de dónde vienen los datos y hacia dónde van.

### Tareas Clave:
1. **Creación de un Data Lake:** Configuré un contenedor lógico para los activos de datos.
2. **Administración de Zonas:** Creé zonas de datos curados (Curated Zones) y datos brutos (Raw Zones).
3. **Vinculación de Activos:** Conecté buckets de GCS y datasets de BigQuery a las zonas de Dataplex.
4. **Búsqueda en el Catálogo:** Utilicé las capacidades de búsqueda para localizar rápidamente datos de clientes.

### Concepto Aprendido:
Dataplex permite aplicar políticas de seguridad y calidad de datos de forma centralizada, sin importar si los datos están físicamente en archivos (GCS) o en tablas (BigQuery).
