#language: pt
#utf-8

Funcionalidade: Eu como usuario do app Quero
                quero realizar um cadastro com
                um cpf ja cadastrado

      @cpf
      Cenario: Cadastrada cpf ja cadastrado
         Dado que eu esteja na home do app natura
         Quando vou na abar de cadastro
         E realizo meu cadastro com cpf ja cadastrado
         Então vejo mensagem "msg_massa" do cpf já cadastrado
