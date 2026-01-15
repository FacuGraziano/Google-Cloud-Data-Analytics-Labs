# Laboratorio 2: Exploración de tipos de datos planos y anidados en BigQuery

En este laboratorio, profundicé en la estructura de los datos dentro de un entorno de BigQuery, trabajando específicamente con el escenario de **TheLook eCommerce**. El objetivo principal fue entender cómo la nube organiza datos complejos para ganar eficiencia y velocidad.

## ¿De qué trató este laboratorio?
A diferencia de las bases de datos tradicionales que usan tablas puramente "planas" (como un Excel), las herramientas modernas de análisis como BigQuery permiten almacenar datos jerárquicos. En este laboratorio, exploré cómo manejar estas estructuras sin necesidad de crear múltiples tablas separadas.

### Lo que aprendí:

1. **Datos Planos (Flat Data):** Identifiqué la estructura básica donde cada columna contiene un solo valor por fila.
2. **Campos Estructurados (STRUCT/RECORD):** Aprendí a navegar por campos que contienen otros campos dentro (como una carpeta que contiene archivos). Usé la sintaxis de punto (ej: `totals.pageviews`) para acceder a ellos.
3. **Campos Repetidos (ARRAY):** Analicé cómo una sola fila puede contener múltiples valores (como una lista de productos vistos por un usuario en una misma sesión).
4. **La función UNNEST:** Este fue el aprendizaje clave. Aprendí a usar `UNNEST` para "desglosar" o "desenrollar" las listas de datos repetidos y convertirlas en filas individuales para poder analizarlas.
5. **Caso Práctico (Fila 19):** Analicé casos específicos donde una sola fila de evento contenía 8 artículos diferentes, entendiendo cómo BigQuery muestra esta información de manera agrupada.

## Herramientas utilizadas:
* **Consola de Google Cloud**
* **BigQuery SQL** (Standard SQL)
* **Dataset público de Google Analytics**

---
*Este laboratorio es parte de mi formación como Analista de Datos en la Nube.*
