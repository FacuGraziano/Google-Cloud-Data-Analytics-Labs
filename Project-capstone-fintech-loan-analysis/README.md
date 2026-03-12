# Análisis de Préstamos Fintech con BigQuery y Looker

Este proyecto forma parte del **Capstone del curso Google Cloud Data Analytics**.  
El objetivo es analizar datos de préstamos de una empresa fintech y construir reportes y visualizaciones que ayuden al área de tesorería a monitorear el estado del negocio.

---

## 🎯 Objetivo del proyecto

Ayudar al departamento de Tesorería a responder tres preguntas clave:

1. ¿Cómo monitorear el flujo de dinero que se presta cada mes?
2. ¿Cuáles son los principales motivos por los que los clientes solicitan préstamos?
3. ¿Cómo se distribuyen geográficamente los préstamos?

---

## 🛠 Herramientas utilizadas

- **Google BigQuery**
- **SQL**
- **Looker**
- **Google Cloud Storage**
- **Connected Sheets**

---

## 📊 Proceso de análisis

El proyecto sigue un flujo típico de análisis de datos en la nube:


### 1. Exploración del dataset

Se analizaron las tablas del dataset `fintech` para identificar:

- monto del préstamo
- fecha de emisión
- estado del préstamo
- ubicación del cliente

Archivo SQL:sql/01_explore_dataset.sql


---

### 2. Importación de datos externos

Se importó un archivo CSV desde **Cloud Storage** que contiene la relación entre estados de EE.UU. y regiones.

Archivo SQL:sql/02_import_state_region.sql


---

### 3. Unión de datasets

Se realizó un **JOIN entre la tabla de préstamos y la tabla de regiones** para enriquecer los datos geográficos.

Archivo SQL:sql/03_join_loans_region.sql


---

### 4. Creación de tabla analítica

Se creó una tabla usando **CTAS (CREATE TABLE AS SELECT)** para almacenar los resultados del JOIN.

Archivo SQL:sql/04_create_table_loans_with_region.sql


---

### 5. Extracción de datos anidados

Se accedió a campos **nested** dentro del registro `application` para obtener el propósito del préstamo.

Archivo SQL:sql/05_extract_loan_purpose.sql


---

### 6. Eliminación de duplicados

Se eliminaron valores duplicados del campo **purpose** para identificar los motivos únicos de los préstamos.

Archivo SQL:sql/06_deduplicate_loan_purposes.sql


---

### 7. Reporte de préstamos por año

Se generó un reporte que muestra el total de préstamos emitidos por año.

Archivo SQL:sql/07_loans_by_year.sql


---

### 8. Conteo de préstamos por año

Se creó una tabla agregada que cuenta el número de préstamos por año.

Archivo SQL:sql/08_loan_count_by_year.sql


---

# 📊 Dashboard en Looker

Se construyó un dashboard interactivo llamado **Loan Insights** con las siguientes visualizaciones:

### 1️⃣ Total de préstamos pendientes

Indicador KPI que muestra el monto total de préstamos que aún no fueron pagados.

### 2️⃣ Distribución de préstamos por estado

Gráfico que muestra el porcentaje de préstamos según su estado.

### 3️⃣ Top 10 estados con más préstamos

Identifica las regiones con mayor concentración de préstamos.

### 4️⃣ Top 10 clientes con mayor ingreso

Tabla que muestra los clientes con mayores ingresos y préstamos activos.

---

## ⚙ Funcionalidades del dashboard

El dashboard incluye:

- **Cross filtering** entre visualizaciones
- **Actualización automática de datos**
- Visualizaciones interactivas

---

## 📷 Vista previa del dashboard

*(Agregar aquí una captura del dashboard)*


---

# 🧠 Habilidades demostradas

En este proyecto se aplicaron las siguientes habilidades:

- SQL para análisis de datos
- Transformación de datos en BigQuery
- Manejo de datos anidados
- Limpieza y deduplicación de datos
- Creación de tablas analíticas
- Construcción de dashboards en Looker
- Análisis de métricas de negocio

---

# 📌 Conclusiones

Este análisis permite al equipo de Tesorería:

- monitorear el flujo de préstamos
- identificar patrones en las solicitudes de crédito
- analizar la distribución geográfica de los préstamos
- detectar posibles riesgos en la cartera de préstamos

---

# 👨‍💻 Autor

**Facundo Graziano**

Proyecto realizado como parte del programa **Google Cloud Data Analytics**.









