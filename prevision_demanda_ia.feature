Feature: Previsión de demanda con IA
  Como gerente de operaciones, quiero prever la demanda utilizando inteligencia artificial para optimizar mis niveles de inventario.

  Scenario: Previsión de demanda basada en datos históricos
    Given el sistema tiene datos históricos de ventas
    When el algoritmo de previsión es ejecutado
    Then el sistema muestra previsiones de demanda para los próximos meses

  Scenario: Previsión de demanda sin suficientes datos históricos
    Given el sistema tiene pocos datos históricos de ventas
    When el algoritmo de previsión es ejecutado
    Then el sistema muestra un mensaje de "Datos insuficientes para previsión precisa"

  Scenario: Ajuste de previsión tras cambios en el patrón de demanda
    Given el sistema detecta un cambio significativo en la demanda
    When el algoritmo de previsión es ejecutado
    Then el sistema ajusta la previsión para reflejar los nuevos patrones
