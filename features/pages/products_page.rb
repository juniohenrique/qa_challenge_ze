# frozen_string_literal: true

class ProductsPage < SitePrism::Page
  set_url '/products'

  element :btn_adicionar, '#add-product'
  element :btn_add_quinze, '#add-amount-15'

  def selecionar_primeiro_produto
    find('#product-card', match: :first).click
  end

  def adicionar_produto
    wait_until_btn_add_quinze_visible
    btn_add_quinze.click
    wait_until_btn_adicionar_visible
    btn_adicionar.click
  end
end
