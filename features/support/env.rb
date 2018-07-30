require 'calabash-android/cucumber'
require 'pry'
require 'calabash-android/abase'
require 'cpf_faker'
require 'faker'
require 'parallel_calabash'
require 'rspec'

# configuração YAML
$lista_cadastro = YAML.load_file('./date/lista.yml')
$lista_mensagem = YAML.load_file('./date/mensagens.yml')
