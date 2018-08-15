# language: pt
# encoding: UTF-8

Funcionalidade:  Cliente já cadastrado, Realizar compra de dois perfumes infantil

      @infantil
      Cenário: Realizar compra de perfume infantil
          Dado que esteja na home do app
          Quando seleciono aba infantil
          E faço duas comprar
          Então visualizo compra realizada com sucesso
