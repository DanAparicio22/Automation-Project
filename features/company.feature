#language: en
Feature: Company management

Scenario: Login as company
	Given I visit the page of bolsa de trabajo login page
	When I introduce my email and my password
	And I click in "Iniciar Sesion" button
	Then I can see "Iniciaste sesion!." message

Scenario: Create a group
	Given I logged as company
	When I click in "Mis grupos" option
	And introduce "Programming" in name of group
	And introduce "Is a group of programming" in description
	And I click in "Guardar" button
	Then I can see the group "Programming" in my groups

Scenario: See your group
	Given I logged as company
	When I click in "Mis grupos" option
	And I click in "Ver Miembros" button
	Then I can see my user name as Creator

Scenario: Delete Group
	Given I logged as company
	When I click in "Mis grupos" option
	And I click in "Borrar grupo" button
	Then I do not have the group "Programming" in my groups

Scenario: Join into a group
	Given I logged as company
	When I click in "Mis grupos" option
	And I click in "Todos los grupos" button
	And I click in "Unirme" button of group gr1
	Then I can see the group "gr1" in my groups

Scenario: Add reference people in CV
	Given I logged as company
	When I click in "Editar CV" option
	And I click in Referencias option tab
	And enter the required fields that references show below
	|Nombre de la persona de referencia: 	    | Pepito             |
    |Institucion: 	                            | Company2           |
    |Numero de referencia: 	                    | 12345678           |
    And I click in "Guardar" option
	Then I can see the name of reference person introduced

Scenario: Add language in CV
	Given I logged as company
	When I click in "Editar CV" option
	And I click in Idiomas option tab
	And enter the required fields that languages show below
	|Idioma: 	    | Ingles               |
    |Nivel: 	    | Regular              |
    |Habilidades: 	| Lectura y Compresion |
    And I click in "Guardar" option
	Then I can see the language introduced


Scenario: Add abilities in CV
	Given I logged as company
	When I click in "Editar CV" option
	And I click in Habilidades option tab
	And enter the required fields that abilities show below
	|Habilidad: 	    | Trabajo en Equipo |
    And I click in "Guardar" option
	Then I can see the ability introduced

Scenario: Add knowledge in CV
	Given I logged as company
	When I click in "Editar CV" option
	And I click in Conocimientos option tab
	And enter the required fields that knowledge show below
	|Conocimiento: 	    | SCRUM |
    And I click in "Guardar" option
	Then I can see the knowledge introduced

Scenario: Add Membership in CV
	Given I logged as company
	When I click in "Editar CV" option
	And I click in Membresias option tab
	And enter the required fields that memberships show below
	|Titulo: 	    | Miembro titulante |
	|Comunidad: 	| Google experts    |
	|anio: 	        | 1992              |
	|mes: 	        | March             |
	|dia: 	        | 8                 |
    And I click in "Guardar" option
	Then I can see the membership introduced

Scenario: Add Merits in CV
	Given I logged as company
	When I click in "Editar CV" option
	And I click in Meritos option tab
	And enter the required fields that Merits show below
	|Merito: 	    | Buena empresa     |
	|anio: 	        | 1992              |
	|mes: 	        | March             |
	|dia: 	        | 8                 |
    And I click in "Guardar" option
	Then I can see the merit introduced

Scenario: Add Publications in CV
	Given I logged as company
	When I click in "Editar CV" option
	And I click in Publicaciones option tab
	And enter the required fields that Publications show below
	|Tipo de publicacion: 	    | Libro                      |
	|anio: 	                    | 1992                       |
	|mes: 	                    | March                      |
	|dia: 	                    | 8                          |
	|Nombre: 	                | Todo sobre automatizacion  |
	|Lugar: 	                | Bolivia                    |
    And I click in "Guardar" option
	Then I can see the publications introduced

Scenario: Add Courses and Seminars in CV
	Given I logged as company
	When I click in "Editar CV" option
	And I click in Seminars option tab
	And enter the required fields that Seminars show below
	|Nombre del curso o seminario: 	    | Machine Learning           |
	|anio: 	                            | 1992                       |
	|mes: 	                            | March                      |
	|dia: 	                            | 8                          |
	|Carga horaria: 	                | 8                          |
	|Participe como: 	                | Participante               |
    |Institucion: 	                    | UCB                        |
    And I click in "Guardar" option
	Then I can see the seminars introduced