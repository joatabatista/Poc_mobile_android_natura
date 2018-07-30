#language: pt
#utf-8

Funcionalidade: Eu como usuario do app natura
                   irei realizar compras pelo app via boleto

       @boleto           
       Cenario: Realizar compra e pagar via Boleto
          Dado que esteja na home do app
          Quando seleciono aba de compra de perfumes
          E escolho o produto a ser comprado
          E adiciono todos os intens de cadastros
          Então vializo mensagem "Compra realizada com sucesso"
