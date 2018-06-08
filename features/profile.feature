#language: en
Feature:  Profile management

 Background: User is logged in 
   Given I am logged in

  Scenario: Change profile photo 
    Given I am loged in
    And I visit my profile page 
    When The profile picture is clicked
    And I choose a picture file to be changed
    And I click in "Guardar"
    Then I can see the new profile photo

Scenario: Change cover photo 
    Given I am loged in
    And I visit my profile page 
    When The cover picture is clicked
    And I choose a picture file to be changed
    And I click in "Guardar"
    Then I can see the new photo in my cover

  Scenario: Post in profile
    Given I am loged in
    And I visit my profile page
    When The profile page is loaded
    And I write a post in the textarea
    and I click in "Publicar"
    Then I can see the post in my Profile page 

   Scenario: Search people
    Given I am loged in
    And the page is loaded
    When I click in "Buscar" input
    And I write some word to lookfor
    and I click in "Buscar" button
    Then I can see the results from the search 


  Scenario: Log out profile
    Given I am loged in
    And the page is loaded
    When I click in "Salir" button from menu navigation
    Then I can see I am loged out 

