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

  def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(from: @email,
      to: 'julia@julia-hofmann.com',
      subject: "A new contact form message from #{@name}",
      body: @message).deliver_now
end

end
