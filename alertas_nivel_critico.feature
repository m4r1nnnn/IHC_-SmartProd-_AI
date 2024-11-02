Feature: Alertas de productos en nivel crítico
  Como gerente de inventario, quiero recibir alertas cuando los productos lleguen a un nivel crítico para evitar escasez.

  Scenario: Alerta automática cuando el stock llega a nivel crítico
    Given un producto alcanza el nivel crítico de stock
    When el sistema detecta este nivel
    Then el sistema envía una alerta al gerente de inventario

  Scenario: Alerta de nivel crítico para múltiples productos
    Given varios productos alcanzan el nivel crítico de stock
    When el sistema detecta estos niveles
    Then el sistema envía una alerta para cada producto

  Scenario: Alerta de nivel crítico con frecuencia ajustada
    Given el gerente ajusta la frecuencia de alertas a una vez al día
    When un producto alcanza el nivel crítico de stock
    Then el sistema envía una alerta solo una vez al día
