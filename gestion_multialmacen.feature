Feature: Gestión de inventarios multialmacén
  Como responsable de operaciones, quiero gestionar múltiples almacenes desde una sola plataforma para optimizar la distribución de productos.

  Scenario: Selección y visualización de inventario en un almacén específico
    Given el usuario accede a la gestión de inventarios
    When selecciona el almacén "Central"
    Then el sistema muestra el inventario del almacén "Central"

  Scenario: Transferencia de productos entre almacenes
    Given el usuario accede a la gestión de inventarios
    When transfiere productos del almacén "Central" al almacén "Sucursal"
    Then el sistema actualiza el inventario en ambos almacenes

  Scenario: Visualización consolidada de inventarios en todos los almacenes
    Given el usuario accede a la gestión de inventarios
    When selecciona "Ver todos los almacenes"
    Then el sistema muestra un inventario consolidado de todos los almacenes
