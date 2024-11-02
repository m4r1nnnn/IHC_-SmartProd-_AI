Feature: Gestión de precios de productos
  Como comerciante, quiero poder ajustar los precios de mis productos fácilmente desde la plataforma para mantenerme competitivo en el mercado.

  Scenario: Actualización exitosa del precio de un producto
    Given el usuario accede a la sección de precios
    When introduce un nuevo precio para el producto "Zapatos Deportivos"
    Then el sistema actualiza el precio de "Zapatos Deportivos" en tiempo real

  Scenario: Error en actualización de precio por valor inválido
    Given el usuario accede a la sección de precios
    When intenta establecer el precio de "Zapatos Deportivos" a un valor negativo
    Then el sistema muestra un mensaje de "Precio inválido"

  Scenario: Restauración de precio al valor anterior
    Given el usuario ha cambiado el precio de "Zapatos Deportivos"
    When decide restaurar el precio al valor anterior
    Then el sistema actualiza el precio al valor anterior
