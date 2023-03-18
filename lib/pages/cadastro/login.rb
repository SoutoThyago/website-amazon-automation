require_relative '../../../features/page_bases/page_base.rb'

class AmazonLoginPage < PageBase
                                           
    element :fieldUserMenu,               '#nav-link-accountList-nav-line-1'
    element :fieldEmail,                  '#ap_email'
    element :fieldPassword,               '#ap_password'
    element :fieldUserName,       :xpath, '//span[contains(text(), "Olá, Teste")]'
    element :buttonLogin,         :xpath, '(//span[contains(text(), "Faça seu login")])[1]'
    element :buttonContinueLogin, :xpath, '//input[@class="a-button-input"]'        
    element :buttonDoLogin,               '#signInSubmit'  

    def clickDoLogin
        wait_until_fieldUserMenu_visible wait: 5
        mouse_over :fieldUserMenu
        wait_until_buttonLogin_visible wait: 5
        click :buttonLogin
    end

    def sendEmail(emailLogin)
        wait_until_fieldEmail_visible wait: 5
        send_keys :fieldEmail, emailLogin
    end

    def clickButtonContinueLogin         
        wait_until_buttonContinueLogin_visible wait: 5
        click :buttonContinueLogin
    end

    def sendPassword(passwordLogin)
        wait_until_fieldPassword_visible wait: 5
        send_keys :fieldPassword, passwordLogin
    end

    def clickButtonDoLogin
        wait_until_buttonDoLogin_visible wait: 5
        click :buttonDoLogin        
    end 

    def fieldUserNameVisible        
        elemento_visivel? :fieldUserName
    end    
end