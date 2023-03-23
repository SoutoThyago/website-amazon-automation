E('clico nas ofertas do dia') do
    amazonProductsPage.clickButtonDayOffers
end

E('clico nos itens mais vendidos') do
    amazonProductsPage.clickButtonAllProducts
    amazonProductsPage.clickButtonBestSellers
end

E('realizo a busca do produto {string}') do |productName|
    amazonProductsPage.sendValueFieldSearch productName
end

E('seleciono apenas produtos frete gratis') do
    amazonProductsPage.clickCheckboxFreeShipping
end

E('filtro os preços entre {string} e {string} reais') do |initialValue,finalValue|
    amazonProductsPage.sendValuesPrice initialValue, finalValue
end

Entao('sou direcionado para as ofertas do dia') do 
    expect(amazonProductsPage.dayOffersVisible).to eq true
end

Entao('sou direcionado para os itens mais vendidos') do
    expect(amazonProductsPage.bestSellersVisible).to eq true
end 

Entao('é realizada a listagem dos produtos') do 
    expect(amazonProductsPage.productResultSearchVisible).to eq true
end