Feature: Optimización de la cadena de suministro
  Como gerente de inventario, quiero optimizar la cadena de suministro para reducir los tiempos de espera en el reabastecimiento.

  Scenario: Selección del proveedor óptimo para reabastecimiento
    Given el sistema tiene conexión con varios proveedores
    When un producto alcanza el nivel mínimo
    Then el sistema selecciona el proveedor con el tiempo de entrega más rápido

  Scenario: Selección de proveedor considerando costo y tiempo
    Given el sistema tiene varios proveedores disponibles
    When un producto necesita reabastecimiento
    Then el sistema selecciona el proveedor con el mejor balance entre costo y tiempo

  Scenario: Reabastecimiento desde proveedor alternativo si el principal no está disponible
    Given el proveedor principal no está disponible
    When un producto alcanza el nivel mínimo de stock
    Then el sistema selecciona un proveedor alternativo para el reabastecimiento
