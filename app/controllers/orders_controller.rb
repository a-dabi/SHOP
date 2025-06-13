class OrdersController < ApplicationController
  before_action :authenticate_user!
  def index
    @orders = Order.includes(:product).all
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    # your create logic
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path, notice: "Order deleted."
  end
end
