require_relative '../../../features/page_bases/page_base.rb'

class AmazonProfilePage < PageBase

    element :fieldUserName,         :xpath, '//span[contains(text(), "Olá, Teste")]'
    element :buttonYourAccount,     :xpath, '//span[contains(text(), "Sua conta")]'
    element :buttonAddreses,        :xpath, '//span[contains(text(), "Alterar endereços para pedidos e presentes")]'
    element :buttonPayments,        :xpath, '//span[contains(text(), "Gerenciar ou adicionar formas de pagamento e ver suas transações")]'
    element :buttonSaveCreditCard,  :xpath, '(//span[@class="a-button-inner"])[4]'
    element :fieldFirstCreditCard,  :xpath, '(//span[contains(text(), "Cartão de crédito terminando em •••• 7351")])[1]'
    element :buttonAlterCreditCard, :xpath, '//a[@class="a-link-normal" and contains(text(), "Editar")]'
    element :fieldCardName,         :xpath, '(//input[@class="a-input-text a-form-normal a-width-large"])[1]'
    element :buttonAlterAddress,            '#ya-myab-address-edit-btn-1'
    element :buttonSaveAddress,             '#address-ui-widgets-form-submit-button'
    element :fieldAddressName,              '#address-ui-widgets-enterAddressFullName'
    element :fieldAddressPhoneNumber,       '#address-ui-widgets-enterAddressPhoneNumber'
    element :fieldAddressPostalCode,        '#address-ui-widgets-enterAddressPostalCode'
    element :fieldAddressStreet,            '#address-ui-widgets-streetName'
    element :fieldAddressNumber,            '#address-ui-widgets-buildingNumber'
    element :fieldAddressComplement,        '#address-ui-widgets-complement'
    element :fieldAddressNeighborhood,      '#address-ui-widgets-neighborhood'


    def clickYourAccount
        wait_until_fieldUserName_visible wait: 5
        mouse_over :fieldUserName
        wait_until_buttonYourAccount_visible wait: 5
        click :buttonYourAccount
    end

    def clickAddress
        wait_until_buttonAddreses_visible wait: 5
        click :buttonAddreses
    end

    def clickAlterAddress
        wait_until_buttonAlterAddress_visible wait: 5
        click :buttonAlterAddress
    end

    def sendAddressName(addressName)
        wait_until_fieldAddressName_visible wait: 5
        send_keys :fieldAddressName, addressName
    end

    def sendPhoneNumber(addressPhoneNumber)
        wait_until_fieldAddressPhoneNumber_visible wait: 5
        send_keys :fieldAddressPhoneNumber, addressPhoneNumber
    end

    def sendAddressPostalCode(addressPostalCode)
        wait_until_fieldAddressPostalCode_visible wait: 5
        send_keys :fieldAddressPostalCode, addressPostalCode
    end

    def sendAddressStreet(addressStreet)
        wait_until_fieldAddressStreet_visible wait: 5
        send_keys :fieldAddressStreet, addressStreet        
    end

    def sendAddressNumber(addressNumber)
        wait_until_fieldAddressNumber_visible wait: 5
        send_keys :fieldAddressNumber, addressNumber
    end

    def sendAddressComplement(addressComplement)
        wait_until_fieldAddressComplement_visible wait: 5
        send_keys :fieldAddressComplement, addressComplement
    end

    def sendAddressNeighborhood(addressNeighborhood)
        wait_until_fieldAddressNeighborhood_visible wait: 5
        send_keys :fieldAddressNeighborhood, addressNeighborhood        
    end

    def clickSaveAddress
        wait_until_buttonSaveAddress_visible wait: 5
        scroll_to :buttonSaveAddress
        esperar_elemento_parar :buttonSaveAddress, intervalo: 2
        click :buttonSaveAddress        
    end

    def clickButtonPayments
        wait_until_buttonPayments_visible wait: 5
        click :buttonPayments
    end

    def clickFieldFirstCreditCard       
        wait_until_fieldFirstCreditCard_visible wait: 5
        click :fieldFirstCreditCard
    end

    def clickButtonAlterCreditCard
        wait_until_buttonAlterCreditCard_visible wait: 5
        click :buttonAlterCreditCard
    end

    def sendCardName(cardName)
        wait_until_fieldCardName_visible wait: 5
        send_keys :fieldCardName, cardName
    end


    def clickSaveCreditCard       
        wait_until_buttonSaveCreditCard_visible wait: 5
        click :buttonSaveCreditCard
    end

    def buttonAlterCreditCardVisible
        elemento_visivel? :buttonAlterCreditCard
    end

    def buttonAlterAddressVisible
        elemento_visivel? :buttonAlterAddress
    end

end