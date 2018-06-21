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

      @Cpf_cadastrado
      Cenário: CPF já cadastrado
          Dado que eu esteja na home do app
          Quando eu clico no menu do app
          E faço meu cadastro
          Então visualizo mensagem "O CPF informado já está sendo utilizado.Por favor, solicite uma nova senha ou entre em contato com nosso atendimento para recuperar o seu acesso"
