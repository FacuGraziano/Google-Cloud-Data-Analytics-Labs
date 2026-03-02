# Lab: Top 5 Browser Analysis in Looker Studio

Este proyecto documenta la creación de un reporte de visualización en Looker Studio para analizar el comportamiento de los visitantes web, segmentándolos por su navegador principal.

## 🎯 Objetivo
Identificar los 5 navegadores más utilizados para acceder al sitio web, transformando datos crudos en una visualización de barras clara y accionable.

## 🛠️ Proceso Técnico
El desarrollo se dividió en tres fases clave:

1. **Configuración de Visualización:**
   - Selección de un gráfico de barras (Bar chart) para representar la distribución.
   - Definición de `device.browser` como **Dimensión** (la categoría de análisis).
   - Aplicación de un límite de 5 elementos (`Sort` y `Limit`) para limpiar la vista.

2. **Cálculo de Métricas (Medidas):**
   - Creación de un **Campo Calculado** (`Total Visitors`) para medir la cantidad única de visitantes.
   - **Fórmula:** `COUNT_DISTINCT(fullVisitorId)`
   - *Nota:* El uso de `COUNT_DISTINCT` es crítico aquí para evitar contar varias veces el mismo usuario si este realizó múltiples sesiones.

3. **Optimización del Dashboard:**
   - Reemplazo del conteo genérico de registros (`Record Count`) por nuestra métrica personalizada para mayor precisión de negocio.
