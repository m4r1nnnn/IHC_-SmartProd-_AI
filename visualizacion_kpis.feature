Feature: Visualización de KPIs en tiempo real
  Como gerente de inventarios, quiero visualizar KPIs de rendimiento en tiempo real para tomar decisiones informadas.

  Scenario: Visualización de KPI de nivel de stock
    Given el usuario accede al panel de control
    And selecciona el KPI de "Nivel de Stock"
    When el sistema actualiza los datos en tiempo real
    Then el sistema muestra el valor actualizado del KPI de "Nivel de Stock"

  Scenario: Visualización de KPI de tiempo de reabastecimiento
    Given el usuario accede al panel de control
    And selecciona el KPI de "Tiempo de Reabastecimiento"
    When el sistema actualiza los datos en tiempo real
    Then el sistema muestra el valor actualizado del KPI de "Tiempo de Reabastecimiento"

  Scenario: Visualización de KPI de ventas mensuales
    Given el usuario accede al panel de control
    And selecciona el KPI de "Ventas Mensuales"
    When el sistema actualiza los datos en tiempo real
    Then el sistema muestra el valor actualizado del KPI de "Ventas Mensuales"
