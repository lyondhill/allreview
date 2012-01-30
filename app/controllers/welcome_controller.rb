class WelcomeController < ApplicationController
  def index
    @new_products = Product.all
  end

end
