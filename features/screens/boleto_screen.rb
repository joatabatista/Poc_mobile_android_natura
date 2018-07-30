class CompraBoleto < Calabash::ABase

#ACESSO A ABA PERFUME
  def realizar_compra
    self.volta_menu
    sleep 5
    #self.aba_perfume
    self.aba_busca

  end

  def volta_menu
    page(Geral).validar_elemento('btGoBack')
    touch("* id:'btGoBack'")
  end

  def aba_perfume
    page(Geral).validar_texto('Perfumaria')
		touch("* text:'Perfumaria'")
  end

  def aba_busca
    page(Geral).validar_elemento('app_bar_search')
    touch("* id:'app_bar_search'")
    keyboard_enter_text('Desodorante Colônia VoVo Masculino - 100ml')
    touch("* text:'Desodorante Colônia VôVó Masculino - 100ml'")
  end

#EXECUÇÃO DE COMPRA DO PRODUTO
  def executar_compra
    self.compra_btn
    self.finalizar_compra_btn
    self.endereco_compra
    self.endereco_compra
    self.preencher_cep
    self.preencher_numero
    self.descer_endereco
    self.preencher_referencia
    self.preencher_recebimento
    self.preencher_telefone
    self.endereco_compra
  end

  def compra_btn
    page(Geral).validar_elemento('btBuyFloat')
    touch("* id:'btBuyFloat'")
    sleep 5
  end

  def finalizar_compra_btn
    page(Geral).validar_elemento('btFinishBuyFloat')
    touch("* id:'btFinishBuyFloat'")
    sleep 5
  end

  def descer_endereco
    page(Geral).down_view(3)
  end

  def endereco_compra
    page(Geral).validar_texto('Adicionar endereço')
    touch("* text:'Adicionar endereço'")
  end

  def preencher_cep
    page(Geral).validar_elemento('edCEP')
    touch("* id:'edCEP'")
    keyboard_enter_text('06462140')
    hide_soft_keyboard
  end

  def preencher_numero
    page(Geral).validar_elemento('edNumber')
    touch("* id:'edNumber'")
    keyboard_enter_text('59')
    hide_soft_keyboard
  end

  def preencher_referencia
    page(Geral).validar_elemento('edReferencePoint')
    touch("* id:'edReferencePoint'")
    keyboard_enter_text('Estadua do Padre Cicero')
    hide_soft_keyboard
  end

  def preencher_recebimento
    page(Geral).validar_elemento('edReceiverName')
    touch("* id:'edReceiverName'")
    keyboard_enter_text('Joana Santos')
    hide_soft_keyboard
  end

  def preencher_telefone
    page(Geral).validar_elemento('edPhoneNumber')
    touch("* id:'edPhoneNumber'")
    keyboard_enter_text('1145528114')
    hide_soft_keyboard
  end

  def preencher_telefone
    page(Geral).validar_elemento('edPhoneNumber')
    touch("* id:'edPhoneNumber'")
    keyboard_enter_text('1145528114')
    hide_soft_keyboard
  end

  #FINALIZAR COMPRAR
  def compra_finalizada
    self.confirma_endereco_btn
    self.seleciono_endereco
    self.descer_boleto
    self.seleciona_boleto
    self.finalizar_compra
  end

  def confirma_endereco_btn
    page(Geral).validar_elemento('btOk')
    touch("* id:'btOk'")
  end

  def seleciono_endereco
    page(Geral).validar_elemento('txAddress')
    touch("* id:'txAddress'")
  end

  def descer_boleto
    page(Geral).down_view(8)
  end

  def seleciona_boleto
    page(Geral).validar_texto('Boleto')
    touch("* text:'Boleto'")
  end

  def finalizar_compra
    page(Geral).validar_elemento('btFinishBuy')
    touch("* id:'btFinishBuy'")
  end

  def validar_comprar
    page(Geral).validar_texto('Boleto')
    touch("* text:'Compra realizada com sucesso'")
  end

end
