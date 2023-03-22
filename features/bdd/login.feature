#language:pt
@after
@url_padrao
@execute_all

Funcionalidade: Login

    Contexto: Acessar o site
      Dado que acesso o site amazon

    Cenario: [Minha Conta] - Login no site Amazon
      Quando eu estiver logado com o email 'teste.automacao.2022@gmail.com' e senha 'teste2022'
      Entao o usuário esta logado