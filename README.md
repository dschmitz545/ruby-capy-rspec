# Treinando um pouco de Capybara, Selenium, Ruby e Rspec

Treinando um pouco de testes com ruby, rspec, capybara e selenium

## Instalação

- No terminal

```bash
bundle init
```

- adicionar ao Gemfile

>gem 'rspec'

- No terminal

```bash
bundle install
```

- Verificando a instalação

```bash
rspec --version
```

## Criando a estrutura de teste

- Criar a estrutura do projeto

```bash
rspec --init
```

## Configuração do Capybara e Selenium

- no arquivo spec_helper.rb

```ruby
#inicio do arquivo
require "capybara"
require "capybara/rspec"
require "selenium-webdriver"
.
.
.
#final do arquivo
Capybara.configure do |config|
  # Para Chrome
  # config.default_driver = :selenium_chrome
  
  # para Firefox
  config.default_driver = :selenium
end
```

- Baixar o chromedriver e o geckodriver

ChromeDriver [Link](https://chromedriver.storage.googleapis.com/index.html)

GeckoDriver [Link](https://github.com/mozilla/geckodriver/releases)

> Obs: ambos devem ser da mesma versão dos navagadores

- Colocar no Path do S.O. No linux:

```bash
/usr/local/bin
```

## Formas de executar o projeto

```bash
rspec
```

ou

```bash
rspec -fd
```

```bash
rspec spec/dropdown_spec.rb -fd
```

```bash
rspec --tag @dropdown -fd
```

- Exportando resultado em formato de arquivo

```bash
rspec --format html --out report.html -fd
```

ou

```bash
rspec --format RspecJunitFormatter --out report.xml -fd
```

## Outras configurações interesantes do Capybara

```ruby
# Final do arquivo
Capybara.configure do |config|
  # tempo default de time out, default 2
  Capybara.default_max_wait_time = 5
end
```
