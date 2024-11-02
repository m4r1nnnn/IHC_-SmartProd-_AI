Feature: Auditoría de inventarios
  Como gerente, quiero realizar auditorías de inventarios para asegurarme de que los datos en el sistema coincidan con el inventario físico.

  Scenario: Auditoría exitosa con coincidencia entre inventario físico y digital
    Given el usuario selecciona un almacén para la auditoría
    And el sistema inicia la auditoría
    When la auditoría finaliza
    Then el sistema genera un informe indicando que el inventario físico coincide con el digital

  Scenario: Auditoría con discrepancias entre inventario físico y digital
    Given el usuario selecciona un almacén para la auditoría
    And el sistema inicia la auditoría
    When se encuentra una discrepancia en la cantidad de un producto
    Then el sistema genera un informe indicando la discrepancia detectada

  Scenario: Auditoría de inventario incompleta por falta de datos
    Given el usuario selecciona un almacén para la auditoría
    And la información de inventario está incompleta
    When la auditoría se intenta completar
    Then el sistema muestra un mensaje de "Inventario incompleto para auditoría"
