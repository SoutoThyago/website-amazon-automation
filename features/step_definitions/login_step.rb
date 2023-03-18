Dado('que acesso o site amazon') do
    #amazonLoginPage.acceptCookies    
end

Quando('eu estiver logado com o email {string} e senha {string}') do |emailLogin,passwordLogin|      
    amazonLoginPage.clickDoLogin
    amazonLoginPage.sendEmail emailLogin
    amazonLoginPage.clickButtonContinueLogin
    amazonLoginPage.sendPassword passwordLogin
    amazonLoginPage.clickButtonDoLogin
end

Entao('o usuário esta logado') do
    expect(amazonLoginPage.fieldUserNameVisible).to eq true
end