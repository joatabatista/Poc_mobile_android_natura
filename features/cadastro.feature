# language: pt
# encoding: UTF-8

Funcionalidade: Eu como novo usuario do aplitacivo
  Quero realizar meu cadastro para futuras compras

      @cadastrar
      Cenário: Realizar cadastro
          Dado que eu esteja na home do app
          Quando eu clico no menu do app
          E faço meu cadastro
          Então visualizo meu cadastro com sucesso
