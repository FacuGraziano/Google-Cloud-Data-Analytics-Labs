# Lab 12: Model Dimensions and Measures using LookML

En este laboratorio, asumí el rol de Cloud Data Analyst en *TheLook eCommerce* para construir la estructura lógica del proyecto desde cero utilizando **LookML** (Looker Modeling Language).

## 🚀 Hitos del Proyecto

1. **Configuración del Proyecto:** - Activación del **Development Mode** para realizar cambios en un entorno aislado.
   - Creación del archivo `manifest` y definición del modelo principal.
2. **Conectividad y Vistas:** - Conexión a la base de datos de BigQuery.
   - Generación de **Views** automáticas a partir de tablas físicas y personalización de las mismas.
3. **Modelado de Datos (Dimensions & Measures):**
   - Definición de **Dimensiones:** Atributos para categorizar datos (ej. día de la semana).
   - Definición de **Measures:** Cálculos agregados para métricas de negocio.
4. **Exploración y Visualización:**
   - Configuración de un **Explore** para permitir que los usuarios finales consulten los datos.
   - Creación de un **Look** final que analiza el rendimiento diario.

## 📊 Resultados de la Consulta
Se construyó una visualización específica para responder a:
- **Métrica 1:** Ingresos totales (Total Revenue).
- **Métrica 2:** Conteo total de usuarios únicos (Total User Count).
- **Dimensión:** Agrupado por **Día de la Semana** (Day of the Week).

## 💡 Conceptos Técnicos Aplicados
- **Agregación:** Uso de funciones de suma y conteo dentro de archivos `.view`.
- **Gobernanza de Datos:** Creación de una "única fuente de verdad" donde las métricas se definen una sola vez en el código y se reutilizan en toda la organización.
- **Ciclo de Desarrollo:** Flujo completo desde la conexión de datos hasta la entrega de valor a los stakeholders.
