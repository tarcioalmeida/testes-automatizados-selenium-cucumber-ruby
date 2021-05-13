Selenium::WebDriver::Chrome.driver_path="C:/tools/chrome-webdriver/90/chromedriver.exe"

Dado('a página inicial do site do Facebook, sem estar logado') do
  #Declarando a variável @Driver atribuindo o Webdriver do Chrome.
  @driver = Selenium::WebDriver.for :chrome
  #Pedindo para ir para o endereço do Facebook
  @driver.get "http://www.facebook.com"
  sleep 1
end

Quando('apresentar o botão Criar nova conta') do
    @driver.find_element(:xpath, "//a[@data-testid='open-registration-form-button']").displayed?
end

Quando('Clicar no botão Criar nova conta') do
    @driver.find_element(:xpath, "//a[@data-testid='open-registration-form-button']").click
    sleep 3
end
  
Quando("Preencher todos os campos") do
    
    #Nome
    @driver.find_element(:xpath, "//input[@name='firstname']").click
    @driver.find_element(:xpath, "//input[@name='firstname']").clear
    @driver.find_element(:xpath, "//input[@name='firstname']").send_keys "Usuario"
    #sleep 3
        
    #Sobrenome
    @driver.find_element(:xpath, "//input[@name='lastname']").click
    @driver.find_element(:xpath, "//input[@name='lastname']").clear
    @driver.find_element(:xpath, "//input[@name='lastname']").send_keys "Automatizado"
    #sleep 3

    #E-mail
    @driver.find_element(:xpath, "//input[@name='reg_email__']").click
    @driver.find_element(:xpath, "//input[@name='reg_email__']").clear
    @driver.find_element(:xpath, "//input[@name='reg_email__']").send_keys "usuario.automatizado@hotmail.com"
    #sleep 3

    #Confirmação e-mail
    @driver.find_element(:xpath, "//input[@name='reg_email_confirmation__']").click
    @driver.find_element(:xpath, "//input[@name='reg_email_confirmation__']").clear
    @driver.find_element(:xpath, "//input[@name='reg_email_confirmation__']").send_keys "usuario.automatizado@hotmail.com"
    #sleep 3

    #Senha
    @driver.find_element(:xpath, "//input[@name='reg_passwd__']").click
    @driver.find_element(:xpath, "//input[@name='reg_passwd__']").clear
    @driver.find_element(:xpath, "//input[@name='reg_passwd__']").send_keys "senhautomatizada"
    #sleep 3

    #Data de nascimento
    elementoSelectBoxDataNascimento = @driver.find_element(:xpath, "//select[@name='birthday_day']")
    selectDataNascimento = Selenium::WebDriver::Support::Select.new(elementoSelectBoxDataNascimento)
    selectDataNascimento.select_by(:text, "16")
    #sleep 3

    #Mês de nascimento
    elementoSelectBoxMesNascimento = @driver.find_element(:xpath, "//select[@name='birthday_month']")
    selectMesNascimento = Selenium::WebDriver::Support::Select.new(elementoSelectBoxMesNascimento)
    selectMesNascimento.select_by(:text, "Mai")
    #sleep 3

    #Ano de nascimento
    elementoSelectBoxAnoNascimento = @driver.find_element(:xpath, "//select[@name='birthday_year']")
    selectAnoNascimento = Selenium::WebDriver::Support::Select.new(elementoSelectBoxAnoNascimento)
    selectAnoNascimento.select_by(:text, "1990")
    #sleep 3

    #Gênero
    elementoRadioGeneroMasculino = @driver.find_element(:xpath, "//label[text()= 'Masculino']/following-sibling::input")
    elementoRadioGeneroMasculino.click
    sleep 3

end

Quando('Acionar o botão Cadastre-se') do
    @driver.find_element(:xpath, "//button[@name='websubmit']").displayed?
    #@driver.find_element(:xpath, "//button[@name='websubmit']").click
end
  
Então("Apresentar mensagem de sucesso") do
    puts "Mensagem de sucesso"
end