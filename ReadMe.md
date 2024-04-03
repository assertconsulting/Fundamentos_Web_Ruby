
# Serverest Web Automation - Ruby

## Objetivo do Framework
Este framework de teste automatizado foi desenvolvido para validar o processo de login na aplicação web Serverest. Utiliza a linguagem de programação Ruby e a gem `selenium-webdriver` para simular interações de usuário com a interface web, verificando a funcionalidade do login.

## Pré-requisitos
Antes de executar os testes, certifique-se de que os seguintes componentes estão instalados:
- Ruby: A linguagem de programação usada para escrever os testes.
- Gem `selenium-webdriver`: A biblioteca em Ruby para automação de navegadores web.
- ChromeDriver: O driver para o navegador Chrome que permite ao Selenium interagir com o navegador.

## Como instalar os pré-requisitos
- Instale Ruby a partir do [site oficial do Ruby](https://www.ruby-lang.org/).


## Execução do Teste
Para executar o teste:
1. - Parar baixar todas as dependências, execute `bundle install` em um terminal, na pasta do projeto
2. Execute o script usando o comando `ruby nome_do_arquivo.rb` em um terminal.

## Estrutura do Código
O framework inclui os seguintes métodos principais:
- `setup`: Configura o ambiente de teste, inicializando o WebDriver e definindo opções para o navegador.
- `test_login`: Executa o teste de login, realizando as ações de navegação, preenchimento de formulário e submissão.
- `teardown`: Fecha o navegador e encerra a sessão de teste após a execução.

## Descrição dos Métodos
- `setup`: Inicializa o Selenium WebDriver, configura o navegador para maximizar e define o tempo de espera implícita.
- `test_login`: Navega até a página de login, insere credenciais e clica no botão de login. Verifica o sucesso do login.
- `teardown`: Encerra a sessão do navegador, limpando o ambiente de teste.

## Notações
Este projeto não usa notações específicas como em frameworks de teste como RSpec ou Cucumber para Ruby. O fluxo de execução é controlado manualmente no script.
