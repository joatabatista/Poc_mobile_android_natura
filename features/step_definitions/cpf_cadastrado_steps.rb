
Dado(/^que eu esteja na home do app natura$/) do
  page(PreencherCadastro).pular_etapas
end

Quando(/^vou na abar de cadastro$/) do
  page(PreencherCadastro).fazer_cadastro
end

Quando(/^realizo meu cadastro com cpf ja cadastrado$/) do
  posicao = rand(0..5)
  @nome = $lista_cadastro[posicao]['nome']
  @cpf = $lista_cadastro[posicao]['cpf']
  @email = $lista_cadastro[posicao]['email']
  @cep = $lista_cadastro[posicao]['cep']
  @nascimento = $lista_cadastro[posicao]['nascimento']
  @telefone = $lista_cadastro[posicao]['telefone']
  page(PreencherCadastro).realizar_cadastro(@nome, @cpf, @email, @cep, @nascimento, @telefone)
end

Então(/^vejo mensagem "([^"]*)" do cpf já cadastrado$/) do |msg_massa|
  #binding.pry
  #assert_selector("#txTitle", text: $lista_mensagem["msg_massa"], wait:10, visible:true)
   msg_massa = $lista_mensagem['msg']
   @campo_msn = page(PreencherCadastro).campo_msn
   expect(@campo_msn).to eq msg_massa
end
