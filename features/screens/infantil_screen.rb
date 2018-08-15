class Infantil < Calabash::ABase

#METODO PARA ABA DE COMPRA PERFUME INFANTIL
  def aba_infantil
    self.descer_aba_infantil
    self.selecionar_aba_infantil
    self.selecionar_aba_perfumaria_infantil
    self.selecionar_aba_bebe
  end

  def descer_aba_infantil
    page(Geral).down_view(3)
  end

  def selecionar_aba_infantil
    page(Geral).validar_texto('Infantil')
    touch("* text:'Infantil'")
  end

  def selecionar_aba_perfumaria_infantil
    page(Geral).validar_texto('Perfumaria Infantil')
    touch("* text:'Perfumaria Infantil'")
  end

  def selecionar_aba_bebe
    page(Geral).validar_texto('Para Bebês')
    touch("* text:'Para Bebês'")
  end

  #METODO PARA SELECIONA PERFUMES
  def seleciona_produto
    self.seleciona_perfume
    self.qtd_perfume
  end

  def seleciona_perfume
    page(Geral).validar_texto('Conjunto Natura Mamãe e Bebê Miniaturas')
    touch("* text:'Conjunto Natura Mamãe e Bebê Miniaturas'")
  end

  def qtd_perfume
    page(Geral).validar_elemento('btAddUnit')
    touch("* id:'btAddUnit'")
  end


end
