Feature: Evaluación del desempeño de proveedores
  Como gerente de operaciones, quiero evaluar el desempeño de mis proveedores para mejorar la eficiencia de la cadena de suministro.

  Scenario: Evaluación de proveedor con historial completo de pedidos
    Given el sistema registra las órdenes de compra
    And el usuario selecciona el proveedor "Proveedor A"
    When revisa el historial de pedidos
    Then el sistema muestra métricas de cumplimiento de plazos y calidad para "Proveedor A"

  Scenario: Evaluación de proveedor sin historial de pedidos
    Given el usuario selecciona el proveedor "Proveedor B"
    When revisa el historial de pedidos
    Then el sistema muestra un mensaje de "No hay datos suficientes para evaluar"

  Scenario: Comparación de desempeño entre múltiples proveedores
    Given el usuario selecciona los proveedores "Proveedor A" y "Proveedor C"
    When revisa las métricas de cumplimiento y calidad
    Then el sistema muestra una comparación de desempeño entre "Proveedor A" y "Proveedor C"
