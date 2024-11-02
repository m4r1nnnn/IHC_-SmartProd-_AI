Feature: Generación de reportes de ventas
  Como emprendedor, quiero generar reportes de ventas para analizar el rendimiento de los productos.

  Scenario: Generación de reporte para un rango de fechas válido
    Given el usuario accede a la sección de reportes
    And selecciona el rango de fechas "01/01/2024 - 31/01/2024"
    When hace clic en "Generar reporte"
    Then el sistema muestra las ventas realizadas en ese rango de fechas

  Scenario: Generación de reporte sin ventas en el rango seleccionado
    Given el usuario accede a la sección de reportes
    And selecciona el rango de fechas "01/01/2023 - 31/01/2023"
    When hace clic en "Generar reporte"
    Then el sistema muestra un mensaje de "No hay ventas en este rango de fechas"

  Scenario: Generación de reporte sin seleccionar rango de fechas
    Given el usuario accede a la sección de reportes
    When intenta generar el reporte sin seleccionar un rango
    Then el sistema muestra un mensaje de "Seleccione un rango de fechas"
