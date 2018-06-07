#language: en
Feature: Login in bolsa de trabajo ucb

Scenario: Login as company and admin
	Given I visit the page of bolsa de trabajo
	When I click introduce my email and password
	And click in "Iniciar Sesion" button
	Then I can see my cover photo