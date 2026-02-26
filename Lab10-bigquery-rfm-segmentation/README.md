# Lab 10: Customer Segmentation using RFM Method

Este proyecto implementa un análisis **RFM (Recency, Frequency, Monetary)** para segmentar a los clientes de la plataforma de e-commerce `thelook`.

## 🧠 Lógica del Script
El script utiliza una estructura de SQL avanzado con dos CTEs:
1. **rfm_calc:** Calcula las métricas base (días desde la última compra, cantidad de pedidos y gasto total por cliente).
2. **rfm_quant:** Divide a los clientes en cuartiles (`NTILE(4)`) para normalizar los datos.
3. **Segmentación:** Asigna categorías lógicas basadas en los cuartiles obtenidos.

## 👥 Segmentos Identificados
- **High Value Customer:** Clientes que gastan mucho y compran seguido.
- **Loyal Customer:** Clientes con alta frecuencia de compra.
- **At Risk Customer:** Clientes que no han comprado recientemente (recencia baja).
- **Persuadable Customer:** Clientes recientes que pueden ser impulsados a comprar más.
