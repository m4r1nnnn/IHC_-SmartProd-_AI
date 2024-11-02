Feature: Control de costos de inventario
  Como responsable de operaciones, quiero controlar los costos asociados al inventario para optimizar los márgenes de beneficio.

  Scenario: Visualización del informe de costos de inventario
    Given el usuario accede a la sección de costos
    When solicita el informe de costos del mes actual
    Then el sistema muestra un informe detallado con los costos de inventario del mes

  Scenario: Alerta de costos elevados al superar el presupuesto
    Given el sistema tiene un presupuesto de costos de inventario
    And los costos acumulados superan el presupuesto
    When el usuario accede a la sección de costos
    Then el sistema muestra una alerta de "Costos de inventario superan el presupuesto"

  Scenario: Ajuste en el control de costos para reducir el inventario excesivo
    Given el usuario accede a la sección de costos
    And identifica un producto con inventario excesivo
    When reduce la cantidad de dicho producto en el inventario
    Then el sistema muestra el impacto en los costos de inventario
