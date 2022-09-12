class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new
    @order.user = current_user
    @current_cart.basket_items.each do |item|
      @order.basket_items << item
      item.cart_id = nil
    end
    @order.save
    Cart.destroy(session[:cart_id])
    session[:cart_id] = nil
    redirect_to order_path(@order)
  end

  private
    def order_params
      params.require(:order).permit(:name, :email, :address, :pay_method)
    end
end
