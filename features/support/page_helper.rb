# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__),
              '../pages/*_page.rb')].sort.each { |file| require file }

# Modulos para chamar as classes instanciadas
module Pages
  def home
    @home ||= HomePage.new
  end

  def products
    @products ||= ProductsPage.new
  end
end
