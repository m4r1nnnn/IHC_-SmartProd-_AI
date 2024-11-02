Feature: Filtrado de productos por categoría
  Como pequeño comerciante, quiero filtrar mis productos por categoría para mejorar la organización y precisión en la búsqueda de inventario.

  Scenario: Filtrado de productos por una categoría específica
    Given el usuario accede a la página de inventario
    When el usuario selecciona la categoría "Electrónica"
    Then el inventario muestra solo los productos de la categoría "Electrónica"

  Scenario: Filtrado sin resultados (categoría vacía)
    Given el usuario accede a la página de inventario
    When el usuario selecciona la categoría "Joyería"
    Then el inventario muestra un mensaje de "No hay productos en esta categoría"

  Scenario: Filtrado con múltiples categorías activas
    Given el usuario accede a la página de inventario
    When el usuario selecciona las categorías "Ropa" y "Calzado"
    Then el inventario muestra solo productos de "Ropa" y "Calzado"
