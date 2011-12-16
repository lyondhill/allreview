class WelcomeController < ApplicationController
  def index
    @new_products = Product.where(:created_at.gte => 1.day.ago)
  end

end
