Given(/^I am logged in as an Administrator$/) do
  page.driver.browser.manage.window.maximize
  visit('http://bolsadetrabajo.ucbcba.edu.bo/users/profile')
  fill_in('user_email', :with => ENV['USERADMIN'])
  fill_in('user_password',  :with => ENV['PSWADMIN']).native.send_keys(:return)
  page.has_xpath?('//*[@id="menu"]/li[9]/a')
end

When(/^I click Notificaciones$/) do
  click_link('Notificaciones')
end

Then(/^I will see the Notificaciones grid$/) do
  expect(page).to have_content('Notificaciones')
end

When(/^I click Sugerencias$/) do
  click_link('Sugerencias!')
end

Then(/^The Sugerencias grid is loaded$/) do
  expect(page).to have_content('Comentarios')
  expect(page).to have_content('Usuarios')
end

And(/^I can click Mostrar completo$/) do
  find(:xpath, "//tr[td[contains(.,'Este mensaje en Latin se repite en varias partes')]]/td/a", :text => 'Mostrar Completo').click
end

Then(/^The full suggestion is displayed$/) do
  expect(page).to have_content('Este mensaje en Latin se repite en varias partes de la pagina: Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
end

And(/^I can click Volver atras$/) do
  click_link('Volver Atras')
end

And(/^I can click Volver al perfil$/) do
  click_link('Volver al perfil')
end

And(/^The Perfil screen is loaded$/) do
  find(:xpath, "//*[@id='container-cover']/div/div")
end


When(/^I click Gestion de Usuarios$/) do
  click_link('Gestion de usuarios')
end

And(/^I block the user Bruno Mendieta$/) do
  find(:xpath, "//*[@id='usuarios']/li[contains(.,'Brun0')]/div/h4/button[2]", :text => 'Bloquar usuario').click
end



Then(/^The user Bruno Mendieta will be unable to log in$/) do
  click_link('Salir')
  visit('http://bolsadetrabajo.ucbcba.edu.bo/users/profile')
  fill_in('user_email', :with => 'brn.mndt.cbllr@gmail.com')
  fill_in('user_password', :with => 'p4ssWord').native.send_keys(:return)
  expect(page).to have_content('Iniciar Sesion')
end

And(/^I unblock the user Bruno Mendieta$/) do
  find(:xpath, "//*[@id='usuarios']/li[contains(.,'Brun0')]/div/h4/button[2]", :text => 'Desbloquear').click
end

Then(/^The user Bruno Mendieta will be able to log in$/) do
  click_link('Salir')
  visit('http://bolsadetrabajo.ucbcba.edu.bo/users/profile')
  fill_in('user_email', :with => 'brn.mndt.cbllr@gmail.com')
  fill_in('user_password', :with => 'p4ssWord').native.send_keys(:return)
  page.has_xpath?('//*[@id="menu"]/li[9]/a')
end

And(/^I click Ver Curriculum from Bruno Mendieta$/) do
  find(:xpath, "//*[@id='usuarios']/li[contains(.,'Brun0')]/div/h4/button[1]", :text => 'Ver Curriculum').click

end

Then(/^The Curriculum of Bruno Mendieta is displayed$/) do
  expect(page).to have_content('Brun0 Mendieta')
end

Then(/^I can see the Usuarios Registrados grid$/) do
  expect(page).to have_content('Usuarios registrados')
end

And(/^I search for the user Bruno Mendieta$/) do
  fill_in('filtrar', :with => 'Brun0')
end

Then(/^The users displays only the user Bruno Mendieta$/) do
  expect(page).to have_content('Brun0 Mendieta')
  expect(page).not_to have_content('Yanina')
  expect(page).not_to have_content('Administrador Sistema')
end