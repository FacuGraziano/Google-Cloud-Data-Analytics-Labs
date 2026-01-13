# 📊 Análisis de eCommerce y Desempeño Deportivo con BigQuery

## 📝 Escenario de Negocio
Como Analista de Datos en **TheLook eCommerce**, se me asignó la tarea de apoyar al departamento de marketing para una nueva campaña publicitaria de trajes de baño. El objetivo es doble:
1.  Identificar los productos de la categoría "Swim" con mayores ventas reales durante junio de 2023.
2.  Identificar a los 10 jugadores con mejor puntaje en la NCAA para que modelen la marca.

## 🛠️ Herramientas Utilizadas
* **Google BigQuery:** Almacenamiento de datos y ejecución de consultas SQL.
* **Looker Studio:** Visualización de datos y creación de dashboards interactivos.
* **Datasets:** `thelook_gcda` (datos internos) y `ncaa_basketball` (dataset público).

## 🔍 Proceso de Análisis

### 1. Ventas de Trajes de Baño (Junio 2023)
Para obtener datos precisos, realicé un `JOIN` entre las tablas de productos y pedidos. Apliqué filtros críticos para excluir órdenes canceladas o devueltas, asegurando que el reporte refleje ingresos netos.



* **Lógica clave:** Se utilizó la cláusula `WHERE UPPER(p.category) like "SWIM"` y se filtraron los estados de pedido `('RETURNED','CANCELED','CANCELLED')`.

### 2. Ranking de Jugadores NCAA
Utilicé funciones de ventana avanzada para clasificar a los jugadores basándome en su desempeño por puntos en un solo partido.



* **Función utilizada:** `RANK() OVER (ORDER BY points DESC)`. Esta función permite manejar empates de forma efectiva para identificar a la élite deportiva.

## 📈 Resultados y Visualización
Los datos procesados en BigQuery fueron exportados a **Looker Studio**, donde se generaron visualizaciones que permiten a la gerencia de marketing tomar decisiones rápidas basadas en:
* Marcas de trajes de baño con mayor volumen de venta.
* Lista de atletas con mayor impacto mediático por su rendimiento en la cancha.

> **Nota técnica:** Los archivos `.sql` con las consultas completas se encuentran adjuntos en esta misma carpeta.
>
> ## 📘 Qué aprendí
- Uso de datasets públicos en BigQuery
- Escritura de consultas SQL para análisis exploratorio
- Interpretación de resultados a partir de datos deportivos

