class HomePage < SitePrism::Page

    set_url '/'

    element :btn_sou_maior_de_idade, '#age-gate-button-yes'
    element :btn_nao_sou_maior_de_idade, '#age-gate-button-no'
    element :btn_facebook_login, '#login-facebook-button-sign-in'
    element :btn_email_login, '#login-home-email-button-sign-in'
    element :btn_inserir_endereco, '#welcome-button-set-delivery-options'
    element :txt_endereco, '#address-search-input-address'
    element :txt_num_endereco, '#address-details-input-number'
    element :txt_complemento, '#address-details-input-complement'
    element :check_sem_complemento, '#address-details-checkbox-without-complement'
    element :btn_continuar, '#address-details-button-continue'
    element :txt_email, '#login-mail-input-email'
    element :txt_senha, '#login-mail-input-password'


    def login_email(email, senha)
        txt_email.set 'juunio.henriquee@gmail.com'
        txt_senha.set 'qachallenge13'
    end
    
    def digitar_endereco
        wait_until_txt_endereco_visible
        txt_endereco.set 'Rua Jaceru'
    end

    def preencher_complemento
        wait_until_txt_num_endereco_visible
        txt_num_endereco.set '235'
        wait_until_txt_complemento_visible
        fill_in 'Complemento', with: 'Cow Working'
        find('span', :text => 'Trabalho').click
        btn_continuar.click
    end

    def ver_produtos_click
        click_button('Ver produtos disponíveis')
    end

    def selecionar_primeiro_endereco
        find('div[itemid="google-address"]', match: :first).click
    end



end