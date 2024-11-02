Feature: Notificaciones de reabastecimiento
  Como emprendedor, quiero recibir notificaciones cuando el stock de un producto esté bajo para poder realizar pedidos a tiempo.

  Scenario: Notificación automática cuando el stock baja al mínimo
    Given el stock de un producto alcanza el nivel mínimo
    When el sistema detecta el nivel bajo
    Then el sistema envía una notificación al comerciante

  Scenario: Configuración de notificaciones desactivada
    Given el comerciante ha desactivado las notificaciones de reabastecimiento
    When el stock de un producto baja al mínimo
    Then el sistema no envía ninguna notificación

  Scenario: Notificación de reabastecimiento para múltiples productos
    Given varios productos alcanzan el nivel mínimo de stock
    When el sistema detecta los niveles bajos
    Then el sistema envía una notificación por cada producto
