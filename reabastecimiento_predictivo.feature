Feature: Reabastecimiento predictivo
  Como responsable de inventario, quiero implementar un sistema de reabastecimiento predictivo para reducir la escasez de productos.

  Scenario: Reabastecimiento sugerido basado en demanda anticipada
    Given el sistema analiza los datos históricos de ventas
    When se identifica un patrón de alta demanda
    Then el sistema sugiere un reabastecimiento anticipado para evitar escasez

  Scenario: Reabastecimiento no necesario debido a baja demanda prevista
    Given el sistema analiza los datos históricos de ventas
    When se identifica una baja en la demanda
    Then el sistema no sugiere reabastecimiento para evitar sobrestock

  Scenario: Ajuste de sugerencia de reabastecimiento por cambios estacionales
    Given el sistema analiza los datos históricos y estacionales de ventas
    When se anticipa un aumento de demanda por temporada
    Then el sistema sugiere un reabastecimiento adicional para cubrir la demanda estacional
