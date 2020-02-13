
Dado("eu sou uma pessoa querendo buscar um produto") do
    home.load
end
  
Quando("eu nao tenho {int} anos") do |int|
    home.btn_nao_sou_maior_de_idade.click
end
  
Então("vejo informacoes de {string}") do |string|
    page.switch_to_window(page.windows.last)
    expect(page).to have_title "Consumo inteligente - Ambev"
end

Quando("eu tenho {int} anos") do |int|
    home.btn_sou_maior_de_idade.click
end

Quando("termino de escolher meu produto") do
    home.ver_produtos_click
    sleep 10
end

Quando("escolho meu endereco") do
     home.btn_inserir_endereco.click
     home.digitar_endereco
     home.selecionar_primeiro_endereco
     home.preencher_complemento
end