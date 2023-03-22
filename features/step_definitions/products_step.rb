E('clico nas ofertas do dia') do
    amazonProductsPage.clickButtonDayOffers
end

E('clico nos itens mais vendidos') do
    amazonProductsPage.clickButtonAllProducts
    amazonProductsPage.clickButtonBestSellers
end

Entao('sou direcionado para as ofertas do dia') do 
    expect(amazonProductsPage.dayOffersVisible).to eq true
end

Entao('sou direcionado para os itens mais vendidos') do
    expect(amazonProductsPage.bestSellersVisible).to eq true
end 