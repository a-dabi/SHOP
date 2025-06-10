class HomeController < ApplicationController
  def index
  end

  def home
    @featured_product = Product.first
  end

  def about
  end

  def contact
  end

end
