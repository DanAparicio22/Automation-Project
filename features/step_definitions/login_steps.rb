Given("I visit the page of bolsa de trabajo") do
  visit("http://bolsadetrabajo.ucbcba.edu.bo/users/profile")
end

When("I click introduce my email and password") do
  fill_in('user_email', :with => 'abc@mail.com')
  fill_in('user_password', :with => 'Holamundo7')
end

When("click in {string} button") do |string|
  click_button(string)
end

Then("I can see my cover photo") do
  page.should have_content('Iniciaste sesion!.')
end