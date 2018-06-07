Given("I logged as company") do
  page.driver.browser.manage.window.maximize
  visit("http://bolsadetrabajo.ucbcba.edu.bo/users/profile")
  fill_in('user_email', :with => ENV['USERCOMPANY'])
  fill_in('user_password', :with => ENV['PSWCOMPANY'])
  click_button("Iniciar Sesion")
end

When("I introduce my email and my password") do
  fill_in('user_email', :with => 'company@mail.com')
  fill_in('user_password', :with => 'Company1')
end

When("I click in {string} button") do |string|
  click_button(string)
end

Then("I can see {string} message") do |string|
  page.should have_content(string)
end

When("I click in {string} option") do |string|
  click_on(string)
end

When("introduce {string} in name of group") do |string|
  fill_in('nombre', :with => string)
end

When("introduce {string} in description") do |string|
  fill_in('group_description', :with => string)
end

Then("I can see the group {string} in my groups") do |string|
  page.should have_content(string)
end

Then("I do not have the group {string} in my groups") do |string|
  page.should have_no_content(string)
end

When("I click in {string} button of group gr1") do |string|
  find(:xpath, "/html/body/div[2]/div[2]/ul/li[1]/div/h4/button").click
end

Then("I can see my user name as Creator") do
  page.should have_content('Company')
end

When("enter the required fields that references show below") do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
	when "Nombre de la persona de referencia:"
    	fill_in('referencia', :with => value)
    	@name = value
	when "Institucion:"
		fill_in('referential_institution', :with => value)
    when "Numero de referencia:"
		fill_in('referential_number', :with => value)
	end
  end
end

When("I click in Referencias option tab") do 
  find(:xpath, "/html/body/div[2]/div[1]/ul/li[10]/a").click
end

Then("I can see the name of reference person introduced") do
  find(:xpath, "/html/body/div[2]/div[1]/ul/li[10]/a").click
  page.should have_content(@name)
end

When("I click in Idiomas option tab") do 
  find(:xpath, "/html/body/div[2]/div[1]/ul/li[9]/a").click
end

When("enter the required fields that languages show below") do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
	when "Idioma:"
    	fill_in('idioma', :with => value)
    	@language = value
	when "Nivel:"
		find('#language_level').find(:xpath, 'option[2]').select_option
    when "Habilidades:"
		find('#language_skill').find(:xpath, 'option[1]').select_option
	end
  end
end

Then("I can see the language introduced") do
  find(:xpath, "html/body/div[2]/div[1]/ul/li[9]/a").click
  page.should have_content(@language)
end

When("I click in Habilidades option tab") do
  find(:xpath, "/html/body/div[2]/div[1]/ul/li[8]/a").click
end

When("enter the required fields that abilities show below") do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
	when "Habilidad:"
    	fill_in('habilidad', :with => value)
    	@ability = value
	end
  end
end

Then("I can see the ability introduced") do
  find(:xpath, "html/body/div[2]/div[1]/ul/li[8]/a").click
  page.should have_content(@ability)
end

When("I click in Conocimientos option tab") do
  	find(:xpath, "html/body/div[2]/div[1]/ul/li[7]/a").click
end

When("enter the required fields that knowledge show below") do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
	when "Conocimiento:"
    	fill_in('conocimiento', :with => value)
    	@knowledge = value
	end
  end
end

Then("I can see the knowledge introduced") do
  	find(:xpath, "html/body/div[2]/div[1]/ul/li[7]/a").click
    page.should have_content(@knowledge)
end

When("I click in Membresias option tab") do
  find(:xpath, "html/body/div[2]/div[1]/ul/li[6]/a").click
end

When("enter the required fields that memberships show below") do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
	when "Titulo:"
    	fill_in('membresia', :with => value)
    	@title = value
    when "Comunidad:"
    	fill_in('membership_organization', :with => value)
    	@community = value
    when "anio:"
    	find('#membership_date_1i').find(:xpath, 'option[3]').select_option
    when "mes:"
    	find('#membership_date_2i').find(:xpath, 'option[3]').select_option
    when "dia:"
    	find('#membership_date_3i').find(:xpath, 'option[8]').select_option
	end
  end
end

Then("I can see the membership introduced") do
  find(:xpath, "html/body/div[2]/div[1]/ul/li[6]/a").click
  page.should have_content(@title + " en " + @community)
end

When("I click in Meritos option tab") do
  find(:xpath, "html/body/div[2]/div[1]/ul/li[5]/a").click
end

When("enter the required fields that Merits show below") do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
	when "Merito:"
    	fill_in('merito', :with => value)
    	@merit = value
    when "anio:"
    	find('#merit_date_1i').find(:xpath, 'option[3]').select_option
    when "mes:"
    	find('#merit_date_2i').find(:xpath, 'option[3]').select_option
    when "dia:"
    	find('#merit_date_3i').find(:xpath, 'option[8]').select_option
	end
  end
end

Then("I can see the merit introduced") do
    find(:xpath, "html/body/div[2]/div[1]/ul/li[5]/a").click
    page.should have_content(@merit)
end

When("I click in Publicaciones option tab") do
  find(:xpath, "html/body/div[2]/div[1]/ul/li[4]/a").click
end

When("enter the required fields that Publications show below") do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
	when "Nombre:"
    	fill_in('nombre_publicacion', :with => value)
    	@name = value
    when "Lugar:"
    	fill_in('publication_location', :with => value)
    when "anio:"
    	find('#publication_date_1i').find(:xpath, 'option[3]').select_option
    	@year = value
    when "mes:"
    	find('#publication_date_2i').find(:xpath, 'option[3]').select_option
    when "dia:"
    	find('#publication_date_3i').find(:xpath, 'option[8]').select_option
    when "Tipo de publicacion:"
    	find('#publication_publicationType').find(:xpath, 'option[3]').select_option
    	@type = value
	end
  end
end

Then("I can see the publications introduced") do
  find(:xpath, "html/body/div[2]/div[1]/ul/li[4]/a").click
  page.should have_content(@name)
end

When("I click in Seminars option tab") do
  find(:xpath, "html/body/div[2]/div[1]/ul/li[3]/a").click
end

When("enter the required fields that Seminars show below") do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
	when "Nombre del curso o seminario:"
    	fill_in('nombre_seminario', :with => value)
    	@course = value
    when "Carga horaria:"
    	fill_in('course_workload', :with => value)
    	@hours = value
    when "anio:"
    	find('#course_date_1i').find(:xpath, 'option[3]').select_option
    	@year = value
    when "mes:"
    	find('#course_date_2i').find(:xpath, 'option[3]').select_option
    when "dia:"
    	find('#course_date_3i').find(:xpath, 'option[8]').select_option
    when "Participe como:"
    	find('#course_given').find(:xpath, 'option[1]').select_option
    	@participateAs = value
    when "Institucion:"
    	fill_in('course_institution', :with => value)
    	@institution = value
	end
  end
end

Then("I can see the seminars introduced") do
  find(:xpath, "html/body/div[2]/div[1]/ul/li[3]/a").click
  page.should have_content(@course)
end