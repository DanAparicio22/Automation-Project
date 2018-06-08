Given("I am logged in") do
  page.driver.browser.manage.window.maximize
  visit("http://bolsadetrabajo.ucbcba.edu.bo/users/profile")
  fill_in('user_email', :with => ENV['USERCOMPANY'])
  fill_in('user_password', :with => ENV['PSWCOMPANY'])
  click_button("Iniciar Sesion")
end
  
  When("The profile picture is clicked") do
    click_link('avatar')
  end
  
  Then("I choose a picture file to be changed") do
    click_link('avatarFile')
  end
  
  And("I click in {string}") do
    find(:xpath, "//*[@id='edit_picture_118']/div[5]/input").click
  end
   
  When("The profile picture is clicked") do
    click_link('avatar')
  end
  
  Then("I choose a picture file to be changed") do
    click_link('avatarFile')
  end
  
  And("I click in {string}") do
    find(:xpath, "//*[@id='edit_picture_118']/div[5]/input").click
  end

  When("The cover picture is clicked") do
    click_link('container-cover')
  end
  
  And("I choose a picture file to be changed") do
    find(:xpath, "//*[@id='edit_picture']/div[5]/input").click
  end

  Then("I can see the new photo in my cover") do
    page.should have_content()
  end

  When("I write a post in the textarea") do
    fill_in('estado', with => string)
  end

  And("I click in {string}") do
    click_on('boton_estado')
  end
  
  Then("I can see the post in my Profile page") do
    page.should have_content(string)
  end
  
  When("I click in {string}input") do
    fill_in('estado', with => string)
    click_on('search-box')
  end

  And("I write some word to lookfor") do
    click_button('boton_estado')
  end
  
  And("I click in "Buscar" button") do
    find(:xpath, "//*[@id='menu']/li[10]/form/input[4]").click
  end
  
  Then("I can see the results from the search") do
    page.should have_content(string)
  end

  When("I click in {string} button from menu navigation") do
    find(:xpath, "//*[@id='menu']/li[9]/a").click
  end
  
  Then("I can see I am loged out") do
    page.should have_no_content(string)
  end
