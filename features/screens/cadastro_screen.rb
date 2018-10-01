class PreencherCadastro < Calabash::ABase

#PULAR ETAPAS
  def pular_etapas
    self.pular_tutorial
    self.pular_atualizacao
    self.esq_dir
  end

  def pular_tutorial
    page(Geral).validar_elemento('btSkip')
		touch("* id:'btSkip'")
  end

  def pular_atualizacao
    page(Geral).validar_elemento('textview_new_version_no_button')
		touch("* id:'textview_new_version_no_button'")
    #sleep 5
  end

  def passar_para_lad0
    page(Geral).aguardar(5)
    page(Geral).down_view(2)
    #touch("android.widget.ImageButton index:0", :timeout => 20)
  end

  #SERVE PARA ARRASTA DA ESQUENTA PARA DIREITA
  def esq_dir
    page(Geral).scroll_delado(3)
  end

#SOLICITAR CADASTRO
  def fazer_cadastro
    page(Geral).validar_elemento('textView10')
		touch("* id:'textView10'")
  end

  def preencher_senhaboleto(senha)
    page(Geral).validar_elemento('edPassword')
		touch("* id:'edPassword'")
    keyboard_enter_text ENV['SENHA']#ENV EU COLOCO A SENHA NA HORA DE EXECUTA O CODIGO EX:LINHA DE COMANDO E SENHA=123456
    hide_soft_keyboard
  end
  #REALIZAR COMPRA VIA BOLETO (METODO FOI FEITO AQUI POIS JA TINHA OS PASSOS)
  def realizar_compraboleto(email)
    self.pular_tutorial
    self.pular_atualizacao
    sleep 5
    self.esq_dir
    self.fazer_cadastro
    self.preencher_email(email)
    self.preencher_senhaboleto(ENV['SENHA'])
    self.entrar_btn
  end

#REALIZAR CADASTRO
  def realizar_cadastro(nome, cpf, email, cep, nascimento, telefone)
    self.cadastrar_btm
    self.preencher_nome(nome)
    self.preencher_cpf(cpf)
    self.preencher_email(email)
    self.proximo_passo
    self.preencher_senha(ENV['SENHA'])
    self.confirmar_senha(ENV['SENHA'])
    self.preencher_cep(cep)
    self.preencher_nascimento(nascimento)
    self.proximo_passo
    self.preencher_sexo
    self.preencher_telefone(telefone)
    self.clicar_termo
    self.corcodo_btn
    self.entrar_btn
  end

  def cadastrar_btm
    page(Geral).validar_elemento('btQueroCadastrar')
    touch("* id:'btQueroCadastrar'")
  end

  def preencher_nome(nome)
    page(Geral).validar_elemento('edNomeCompleto')
		touch("* id:'edNomeCompleto'")
    keyboard_enter_text(nome)
    hide_soft_keyboard
  end

  def preencher_cpf(cpf)
    page(Geral).validar_elemento('edCPF')
		touch("* id:'edCPF'")
    keyboard_enter_text(cpf)
    hide_soft_keyboard
  end

  def preencher_email(email)
    page(Geral).validar_elemento('edEmail')
		touch("* id:'edEmail'")
    keyboard_enter_text(email)
    hide_soft_keyboard
  end

  def proximo_passo
    page(Geral).down_view(2)
  end

  def preencher_senha(senha)
    page(Geral).validar_elemento('edSenha')
		touch("* id:'edSenha'")
    keyboard_enter_text ENV['SENHA']#ENV EU COLOCO A SENHA NA HORA DE EXECUTA O CODIGO EX:LINHA DE COMANDO E SENHA=123456
    hide_soft_keyboard
  end

  def confirmar_senha(senha)
    page(Geral).validar_elemento('edConfirmeSenha')
		touch("* id:'edConfirmeSenha'")
    keyboard_enter_text ENV['SENHA']
    hide_soft_keyboard
  end

  def preencher_cep(cep)
    page(Geral).validar_elemento('edCEP')
		touch("* id:'edCEP'")
    keyboard_enter_text(cep)
    hide_soft_keyboard
  end

  def preencher_nascimento(nascimento)
    page(Geral).validar_elemento('edDtNascimento')
		touch("* id:'edDtNascimento'")
    keyboard_enter_text(nascimento)
    hide_soft_keyboard
  end

  def preencher_sexo
    page(Geral).validar_elemento('rdMale')
		touch("* id:'rdMale'")
  end

  def preencher_telefone(telefone)
    page(Geral).validar_elemento('edTelefone')
    touch("* id:'edTelefone'")
    keyboard_enter_text(telefone)
    hide_soft_keyboard
  end

  def clicar_termo
    page(Geral).validar_elemento('ckAcceptTerms')
    touch("* id:'ckAcceptTerms'")
  end

  def corcodo_btn
    page(Geral).validar_elemento('btOk')
    touch("* id:'btOk'")
  end

  def entrar_btn
    page(Geral).validar_elemento('btEntrar')
    touch("* id:'btEntrar'")
  end

#VALIDAÇÃO DO CADASTRO
  def consultar_cadastrado(nome)
    page(Geral).validar_texto(nome)
  end

#CPF JÁ CADASTRADO
  def campo_msn
    mensagem = "* id:'txTitle'"
  end

  def valida_cpf(msgm)
      assert_text(msgm)
  end

end
