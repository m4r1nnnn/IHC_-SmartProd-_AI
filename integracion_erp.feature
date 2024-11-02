Feature: Integración con sistemas ERP
  Como gerente de operaciones, quiero integrar mi sistema de inventarios con el ERP de la empresa para sincronizar datos en tiempo real.

  Scenario: Sincronización exitosa tras una transacción en ERP
    Given el usuario ha configurado la integración con el ERP
    And se realiza una transacción en el ERP
    When el sistema de inventario recibe la actualización
    Then el inventario se sincroniza automáticamente en tiempo real

  Scenario: Sincronización fallida por error de conexión con el ERP
    Given el usuario ha configurado la integración con el ERP
    And el sistema intenta sincronizar una transacción
    When ocurre un error de conexión
    Then el sistema muestra un mensaje de "Error de sincronización con ERP"

  Scenario: Sincronización manual cuando la automática falla
    Given el sistema de sincronización automática falla
    When el usuario selecciona la opción de sincronización manual
    Then el inventario se actualiza tras completar la sincronización manual
