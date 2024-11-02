Feature: Creación automática de facturas
  Como comerciante, quiero que el sistema genere automáticamente facturas por cada venta para facilitar la contabilidad.

  Scenario: Factura generada automáticamente tras una venta
    Given el usuario realiza una venta
    When la transacción es confirmada
    Then el sistema genera una factura y la envía al cliente por correo

  Scenario: Factura no generada por falta de confirmación de venta
    Given el usuario inicia una venta
    When la transacción no es confirmada
    Then el sistema no genera ninguna factura

  Scenario: Generación de factura para un cliente recurrente
    Given el usuario realiza una venta a un cliente registrado
    When la transacción es confirmada
    Then el sistema genera una factura y la envía automáticamente al cliente registrado
