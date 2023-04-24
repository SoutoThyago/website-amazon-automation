#language:pt
@after
@url_padrao
@execute_all

Funcionalidade: Cadastro

    Contexto: Acessar o site
      Dado que acesso o site amazon
      
    Cenario: [Minha Conta] - Alteração de endereço
      Quando eu estiver logado com o email 'teste.automacao.2022@gmail.com' e senha 'teste2022'
      E atualizo o endereço com nome 'Automação' telefone '49984044011' CEP '89900000' rua 'Rua teste' numero '100' complemento 'Casa' bairro 'Centro'
      Entao uma mensagem de endereço atualizado é exibida

    Cenario: [Minha Conta] - Alteração de Forma de Pagamento
      Quando eu estiver logado com o email 'teste.automacao.2022@gmail.com' e senha 'teste2022'       
      E atualizo o cartao de credito com nome 'Automação'
      Entao uma mensagem de forma de pagamento atualizada é exibida