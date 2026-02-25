# Lab 9: Creating and Managing SQL Pipelines (Google Cloud)

Este repositorio contiene la automatización del flujo de datos para el dataset de e-commerce `thelook`. Se implementaron pipelines de SQL utilizando procedimientos almacenados en BigQuery.

## Contenido
- **Automatización:** Creación de `sp_create_load_tables` para centralizar la lógica de carga.
- **Transformación Geográfica:** Uso de `ST_GEOGPOINT` para convertir coordenadas en datos espaciales.
- **Join de Datos:** Consolidación de artículos de pedidos con el catálogo de productos.

## Cómo usar
1. Ejecutar el script SQL en la consola de BigQuery.
2. Llamar al procedimiento con: `CALL thelook_ecommerce.sp_create_load_tables();`
