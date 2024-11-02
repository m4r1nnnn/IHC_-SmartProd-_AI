Feature: Sincronización con plataformas de e-Commerce
  Como pequeño comerciante, quiero sincronizar mi inventario con plataformas de venta en línea para tener control en tiempo real de mi stock.

  Scenario: Sincronización exitosa de stock tras una venta en línea
    Given el usuario ha configurado la integración con Shopify
    And se realiza una venta en Shopify
    When el inventario se actualiza
    Then el sistema muestra el stock actualizado en tiempo real

  Scenario: Sincronización fallida por conexión interrumpida
    Given el usuario ha configurado la integración con Shopify
    And la conexión a Shopify se interrumpe
    When se realiza una venta
    Then el sistema muestra un mensaje de "Error de sincronización"

  Scenario: Sincronización desactivada por falta de configuración
    Given el usuario no ha configurado la integración con Shopify
    When se realiza una venta en línea
    Then el inventario en el sistema no se actualiza
