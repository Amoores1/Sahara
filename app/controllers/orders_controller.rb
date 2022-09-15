class OrdersController < ApplicationController
  def index
    @orders = Order.order('created_at DESC').all #where user = current-user
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

    stripe_line_items = @order.basket_items.map do |item|
      {
        quantity: 1,
        price_data: {
          unit_amount: item.physical_book.stripe_price_cents.to_s.to_i,
          currency: 'gbp',
          product_data: {
            name: item.physical_book.book.title
          }
        }
      }
    end

    stripe_session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: stripe_line_items,
      mode: "payment",
      success_url: order_url(@order),
      cancel_url: order_url(@order)
    )

    @order.update(checkout_session_id: stripe_session.id)
    redirect_to new_order_payment_path(@order)
  end



  private
    def order_params
      params.require(:order).permit(:name, :email, :address, :pay_method)
    end
end
