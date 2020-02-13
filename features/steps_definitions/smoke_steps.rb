# frozen_string_literal: true

Dado('eu sou uma pessoa querendo buscar um produto') do
  home.load
end

Quando('eu nao tenho {int} anos') do |_int|
  home.btn_nao_sou_maior_de_idade.click
end

Então('vejo informacoes de {string}') do |_string|
  page.switch_to_window(page.windows.last)
  expect(page).to have_title 'Consumo inteligente - Ambev'
end

Quando('eu tenho {int} anos') do |_int|
  home.btn_sou_maior_de_idade.click
end

Quando('termino de escolher meu produto') do
  home.ver_produtos_click
  products.selecionar_primeiro_produto
  products.adicionar_produto
end

Quando('escolho meu endereco') do
  home.btn_inserir_endereco.click
  home.digitar_endereco
  home.selecionar_primeiro_endereco
  home.preencher_complemento
end

Entao('posso acessar meu cadastro') do
  expect(page).to have_text 'ENTRAR PARA CONTINUAR'
end

Quando('acesso minha conta') do
  home.login_email
end

Quando('peco para entregar no trabalho o produto') do
  home.btn_inserir_endereco.click
  home.escolher_endereco_trabalho
  home.ver_produtos_click
  products.selecionar_primeiro_produto
  products.adicionar_produto
  sleep 10
end

Entao('posso acessar meu cadastro') do
end

Entao('escolher a forma de pagamento') do
  expect(page).to have_text 'SELECIONAR FORMA DE PAGAMENTO'
end
