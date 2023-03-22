require_relative '../../../features/page_bases/page_base.rb'

class AmazonProductsPage < PageBase

    element :buttonDayOffers,   :xpath, '//a[contains(text(), "Ofertas do Dia")]'
    element :fieldDayOffers,    :xpath, '//h1[contains(text(), "Ofertas e Promoções")]'
    element :buttonAllProducts,         '#nav-hamburger-menu'
    element :buttonBestSellers, :xpath, '(//a[contains(text(), "Mais Vendidos")])[2]'
    element :fieldBestSellers,  :xpath, '//span[contains(text(), "Mais vendidos")]'

    def clickButtonDayOffers
        esperar_elemento_parar :buttonDayOffers, intervalo: 3    
        click :buttonDayOffers
    end

    def dayOffersVisible
        elemento_visivel? :fieldDayOffers
    end

    def clickButtonAllProducts
        wait_until_buttonAllProducts_visible wait: 5
        click :buttonAllProducts
    end
    
    def clickButtonBestSellers
        wait_until_buttonBestSellers_visible wait: 5
        click :buttonBestSellers
    end

    def bestSellersVisible
        elemento_visivel? :fieldBestSellers
    end

end