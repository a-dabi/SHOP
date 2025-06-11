class HomeController < ApplicationController
  def index
  end

  def home
    @featured_product = Product.first

  end

  def about
  end

  def contact
    @products = Product.limit(3)
  end

end
