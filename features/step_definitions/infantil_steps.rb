Quando(/^seleciono aba infantil$/) do
  page(Infantil).aba_infantil
end

Quando(/^faço duas comprar$/) do
  page(Infantil).seleciona_produto
  page(CompraBoleto).executar_compra
  page(CompraBoleto).compra_finalizada
end

Então(/^visualizo compra realizada com sucesso$/) do
page(CompraBoleto).validar_comprar
end
