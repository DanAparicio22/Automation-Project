@maximize
Given("I am logged in") do
  visit("http://bolsadetrabajo.ucbcba.edu.bo/users/profile")
  fill_in('user_email', :with => ENV['USERCOMPANY'])
  fill_in('user_password', :with => ENV['PSWCOMPANY'])
  click_button("Iniciar Sesion")
end

When("I write {string} in the textarea") do |string|
  fill_in('estado', :with => string)
  @post = string
end

Then("I can see the post in my Profile page") do
  page.should have_content(@post)
end

When("I click in edit post button") do
  find(:xpath, "/html/body/div[5]/div/div[2]/div[1]/a/button").click
end

When("I write {string}") do |string|
  fill_in('post_body', :with => string)
  @post = string
end

When("I click in {string} input") do |string|
  click_on(string)
end

When("I write {string} to lookfor") do |string|
  fill_in('search-box', :with => string)
  @name = string
end

Then("I can see the results from the search") do
  page.should have_content(@name)
end