E('atualizo o endereço com nome {string} telefone {string} CEP {string} rua {string} numero {string} complemento {string} bairro {string}') do
    |addressName,addressPhoneNumber,addressPostalCode,addressStreet,addressNumber,addressComplement,addressNeighborhood|
    amazonProfilePage.clickYourAccount
    amazonProfilePage.clickAddress
    amazonProfilePage.clickAlterAddress
    amazonProfilePage.sendAddressName addressName
    amazonProfilePage.sendPhoneNumber addressPhoneNumber
    amazonProfilePage.sendAddressPostalCode addressPostalCode 
    amazonProfilePage.sendAddressStreet addressStreet
    amazonProfilePage.sendAddressNumber addressNumber
    amazonProfilePage.sendAddressComplement addressComplement
    amazonProfilePage.sendAddressNeighborhood addressNeighborhood
    amazonProfilePage.clickSaveAddress
end

Entao('uma mensagem de endereço atualizado é exibida') do
    expect(amazonProfilePage.buttonAlterAddressVisible).to eq true
end