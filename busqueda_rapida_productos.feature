Feature: Búsqueda rápida de productos
  Como pequeño comerciante, quiero poder buscar rápidamente productos en mi inventario para identificar su disponibilidad.

  Scenario: Búsqueda exitosa de un producto existente
    Given el usuario accede a la barra de búsqueda en la sección de inventario
    When introduce el nombre del producto "Cámara Digital"
    Then el sistema muestra el producto "Cámara Digital" en los resultados

  Scenario: Búsqueda sin resultados
    Given el usuario accede a la barra de búsqueda en la sección de inventario
    When introduce el nombre del producto "Producto Inexistente"
    Then el sistema muestra un mensaje de "Producto no encontrado"

  Scenario: Búsqueda de productos con nombre parcial
    Given el usuario accede a la barra de búsqueda en la sección de inventario
    When introduce "Cam"
    Then el sistema muestra todos los productos que contienen "Cam" en su nombre
