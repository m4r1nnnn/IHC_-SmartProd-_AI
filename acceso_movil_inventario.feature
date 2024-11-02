Feature: Acceso móvil al inventario
  Como comerciante, quiero acceder a mi inventario desde mi teléfono móvil para poder gestionar mi negocio desde cualquier lugar.

  Scenario: Acceso exitoso al inventario desde la aplicación móvil
    Given el usuario abre la aplicación móvil
    When inicia sesión correctamente
    Then el sistema muestra el inventario en tiempo real

  Scenario: Acceso fallido por conexión de red interrumpida
    Given el usuario abre la aplicación móvil
    And intenta acceder al inventario
    When la conexión de red está interrumpida
    Then el sistema muestra un mensaje de "Conexión de red interrumpida"

  Scenario: Acceso a inventario sin sesión iniciada
    Given el usuario abre la aplicación móvil
    When intenta acceder al inventario sin iniciar sesión
    Then el sistema le solicita iniciar sesión
