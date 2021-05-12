Selenium::WebDriver::Chrome.driver_path="C:/tools/chrome-webdriver/90/chromedriver.exe"

Dado('o site do Facebook') do
    @driver = Selenium::WebDriver.for :chrome
    @driver.get "http://www.google.com"
    SLEEP 3
end
  
  Quando('apresentar o campo Criar Nova conta') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando('preencher os campos') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando('acionar o comando Criar') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então('o Facebook irá exibir a tela inicial') do
    pending # Write code here that turns the phrase above into concrete actions
  end