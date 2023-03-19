#language:pt
@after
@url_padrao
@execute_all

Funcionalidade: Acesso ao site

    Contexto: Acessar o site
      Dado que acesso o site amazon

    Cenario: Login no site Amazon
      Quando eu estiver logado com o email 'teste.automacao.2022@gmail.com' e senha 'teste2022'
      Entao o usuário esta logado

    Cenario: Alteração de endereço
      Quando eu estiver logado com o email 'teste.automacao.2022@gmail.com' e senha 'teste2022'
      E atualizo o endereço com nome 'Automação' telefone '49984044011' CEP '89900000' rua 'Rua teste' numero '100' complemento 'Casa' bairro 'Centro'
      Entao uma mensagem de endereço atualizado é exibida