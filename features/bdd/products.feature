#language:pt
@after
@url_padrao
@execute_all

Funcionalidade: Produtos

    Contexto: Acessar o site
      Dado que acesso o site amazon

    Cenario: [Produtos] - Ofertas do dia
      Quando eu estiver logado com o email 'teste.automacao.2022@gmail.com' e senha 'teste2022'
      E clico nas ofertas do dia
      Entao sou direcionado para as ofertas do dia

    Cenario: [Produtos] - Itens mais vendidos
      Quando eu estiver logado com o email 'teste.automacao.2022@gmail.com' e senha 'teste2022'
      E clico nos itens mais vendidos
      Entao sou direcionado para os itens mais vendidos