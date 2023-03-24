require_relative '../../../features/page_bases/page_base.rb'

class AmazonProductsPage < PageBase

    element :buttonDayOffers,      :xpath, '//a[contains(text(), "Ofertas do Dia")]'
    element :fieldDayOffers,       :xpath, '//h1[contains(text(), "Ofertas e Promoções")]'
    element :buttonAllProducts,            '#nav-hamburger-menu'
    element :buttonBestSellers,    :xpath, '(//a[contains(text(), "Mais Vendidos")])[2]'
    element :fieldBestSellers,     :xpath, '//span[contains(text(), "Mais vendidos")]'
    element :fieldSearch,                  '#twotabsearchtextbox'
    element :fieldResultSearch,    :xpath, '//span[contains(text(), "resultados para")]'
    element :checkboxFreeShipping, :xpath, '//span[contains(text(), "Frete Grátis em envios pela Amazon")]'
    element :fieldLowPrice,                '#low-price'
    element :fieldHighPrice,               '#high-price'
    element :buttonGoFindPrice,            '#a-autoid-1'
    element :buttonOrderTo,        :xpath, '//span[contains(text(), "Ordenar por")]'
    element :fieldReleases,                '#s-result-sort-select_4'
    element :buttonFourStars,      :xpath, '(//span[@class="a-size-small a-color-base"])[4]'

    def clickButtonDayOffers
        esperar_elemento_parar :buttonDayOffers, intervalo: 3
        click :buttonDayOffers
    end

    def clickButtonAllProducts
        wait_until_buttonAllProducts_visible wait: 5
        click :buttonAllProducts
    end
    
    def clickButtonBestSellers
        wait_until_buttonBestSellers_visible wait: 5
        click :buttonBestSellers
    end

    def sendValueFieldSearch(productName)
        wait_until_fieldSearch_visible wait: 5
        send_keys :fieldSearch, productName
        hit_enter :fieldSearch
    end

    def clickCheckboxFreeShipping
        wait_until_checkboxFreeShipping_visible wait: 5
        click :checkboxFreeShipping
    end

    def sendValuesPrice(initialValue, finalValue)
        wait_until_fieldLowPrice_visible wait: 5
        send_keys :fieldLowPrice, initialValue
        wait_until_fieldHighPrice_visible wait: 5
        send_keys :fieldHighPrice, finalValue
        scroll_to :buttonGoFindPrice    
        click :buttonGoFindPrice
    end

    def clickButtonOrderTo
        wait_until_buttonOrderTo_visible wait: 5
        click :buttonOrderTo
    end

    def clickButtonFieldReleases
        wait_until_fieldReleases_visible wait: 5
        click :fieldReleases
    end

    def clickButtonFourStars
        wait_until_buttonFourStars_visible wait: 5
        click :buttonFourStars
    end

    def dayOffersVisible
        sleep 2
        elemento_visivel? :fieldDayOffers
    end

    def bestSellersVisible
        sleep 2
        elemento_visivel? :fieldBestSellers
    end

    def productResultSearchVisible
        sleep 2
        elemento_visivel? :fieldResultSearch
    end

end