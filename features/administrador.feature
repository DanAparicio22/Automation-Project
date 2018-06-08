Feature: Administration Management

  Background: User is logged in as an Administrator
    Given I am logged in as an Administrator

  Scenario: See notifications
    When I click Notificaciones
    Then I will see the Notificaciones grid

  Scenario: See Sugerencias
    When I click Sugerencias
    Then The Sugerencias grid is loaded

  Scenario: Display full suggestion
    When I click Sugerencias
    Then The Sugerencias grid is loaded
    And I can click Mostrar completo
    Then The full suggestion is displayed

  Scenario: Go back from full suggestion to the Sugerencias main screen
    When I click Sugerencias
    Then The Sugerencias grid is loaded
    And I can click Mostrar completo
    Then The full suggestion is displayed
    And I can click Volver atras
    And The Sugerencias grid is loaded

  Scenario: Go back from full suggestion to the Perfil screen
    When I click Sugerencias
    Then The Sugerencias grid is loaded
    And I can click Mostrar completo
    Then The full suggestion is displayed
    And I can click Volver al perfil
    And The Perfil screen is loaded

  Scenario: See users
    When I click Gestion de Usuarios
    Then I can see the Usuarios Registrados grid

  Scenario: Block a user
    When I click Gestion de Usuarios
    And  I block the user Bruno Mendieta
    Then The user Bruno Mendieta will be unable to log in

  Scenario: Unblock a user
    When I click Gestion de Usuarios
    And  I unblock the user Bruno Mendieta
    Then The user Bruno Mendieta will be able to log in

  Scenario: See CV
    When I click Gestion de Usuarios
    And I click Ver Curriculum from Bruno Mendieta
    Then The Curriculum of Bruno Mendieta is displayed

  Scenario: Filter user by name
    When I click Gestion de Usuarios
    And I search for the user Bruno Mendieta
    Then The users displays only the user Bruno Mendieta