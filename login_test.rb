require 'selenium-webdriver'

class LoginTests
  def setup
    # Configurando o navegador para ser maximizado
    options = Selenium::WebDriver::Chrome::Options.new(args: ['start-maximized'])
    @driver = Selenium::WebDriver.for :chrome, options: options
    @driver.manage.timeouts.implicit_wait = 10
    @wait = Selenium::WebDriver::Wait.new(timeout: 10)
  end

  def test_login
    @driver.navigate.to "https://front.serverest.dev/login"

    # Encontrar os elementos de usuário e senha e preencher com as credenciais
    @driver.find_element(id: 'email').send_keys('automation@email.com')
    @driver.find_element(id: 'password').send_keys('123456')

    # Clicar no botão de login
    @driver.find_element(xpath: '//*[@id="root"]/div/div/form/button').click

    # Esperar algum elemento da próxima página para confirmar o login
    @wait.until { @driver.find_element(xpath: '//*[@id="navbarTogglerDemo01"]/form/button') }
    puts 'Login realizado com sucesso!'
  end

  def teardown
    @driver.quit
  end
end

# Executando o teste
test = LoginTests.new
test.setup
test.test_login
test.teardown