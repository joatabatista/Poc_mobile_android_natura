Dado(/^que esteja na home do app$/) do
  posicao = rand(0..5)
  @email = $lista_cadastro[posicao]['email']
  page(PreencherCadastro).realizar_compraboleto(@email)
end

Quando(/^seleciono aba de compra de perfumes$/) do
  page(CompraBoleto).realizar_compra
end

Quando(/^escolho o produto a ser comprado$/) do
  page(CompraBoleto).executar_compra
end

Quando(/^adiciono todos os intens de cadastros$/) do
  page(CompraBoleto).compra_finalizada
end

Então(/^vializo mensagem "([^"]*)"$/) do |msg_boleto|
expect(page).to have_content msg_boleto
end
