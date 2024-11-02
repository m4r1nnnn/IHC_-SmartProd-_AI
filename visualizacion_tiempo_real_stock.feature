Feature: Visualización en tiempo real del stock
  Como emprendedora, quiero visualizar en tiempo real el stock de mis productos para gestionar mejor las compras.

  Scenario: Visualización del inventario tras una venta
    Given el usuario accede al panel de control
    And se realiza una venta de un producto
    Then el sistema muestra el inventario actualizado de inmediato

  Scenario: Visualización del inventario tras una adición de stock
    Given el usuario accede al panel de control
    And se agrega stock a un producto
    Then el sistema muestra el inventario actualizado de inmediato

  Scenario: Sin cambios en inventario cuando no hay transacciones
    Given el usuario accede al panel de control
    When no se realizan ventas o adiciones de stock
    Then el inventario muestra la misma cantidad sin cambios
