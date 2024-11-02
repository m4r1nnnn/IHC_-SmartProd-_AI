Feature: Automatización de reabastecimiento
  Como comerciante, quiero automatizar el reabastecimiento para evitar escasez de productos en mi tienda.

  Scenario: Reabastecimiento automático cuando el stock está en nivel mínimo
    Given el stock de un producto llega al mínimo permitido
    When el sistema ejecuta un reabastecimiento automático
    Then el sistema envía una orden de reabastecimiento al proveedor

  Scenario: Reabastecimiento no activado por stock suficiente
    Given el stock de un producto está por encima del mínimo permitido
    When el sistema verifica el nivel de stock
    Then el sistema no envía una orden de reabastecimiento

  Scenario: Reabastecimiento de múltiples productos al mismo tiempo
    Given varios productos alcanzan el nivel mínimo de stock
    When el sistema ejecuta reabastecimientos automáticos
    Then se envían órdenes de reabastecimiento a los proveedores correspondientes
