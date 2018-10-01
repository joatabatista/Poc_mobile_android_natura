
#CADASTRO NO APP
Dado(/^que eu esteja na home do app$/) do
  page(PreencherCadastro).pular_etapas
  binding.pry
end

Quando(/^eu clico no menu do app$/) do
  page(PreencherCadastro).fazer_cadastro
end

Quando(/^faço meu cadastro$/) do
  posicao = rand(0..5)
  @nome = $lista_cadastro[posicao]['nome']
  @cpf = $lista_cadastro[posicao]['cpf']
  @email = $lista_cadastro[posicao]['email']
  @cep = $lista_cadastro[posicao]['cep']
  @nascimento = $lista_cadastro[posicao]['nascimento']
  @telefone = $lista_cadastro[posicao]['telefone']
  page(PreencherCadastro).realizar_cadastro(@nome, @cpf, @email, @cep, @nascimento, @telefone)
  end

Então(/^visualizo meu cadastro com sucesso$/) do
  page(PreencherCadastro).consultar_cadastrado(@nome)
  puts "Seja bem Vindo: #{@nome}"
end
