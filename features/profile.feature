#language: en
Feature: Profile management

Background: 
   Given I am logged in

Scenario: Post in profile
    When I write "Esto es un post" in the textarea
    And I click in "Publicar" button
    Then I can see the post in my Profile page

Scenario: Edit Post in profile
    When I click in edit post button
    And I write "Esto es un post cambiado"
    And I click in "Guardar" button
    Then I can see the post in my Profile page

Scenario: Search people
    When I click in "Buscar" input
    And I write "Pepe" to lookfor
    And I click in "Buscar" button
    Then I can see the results from the search