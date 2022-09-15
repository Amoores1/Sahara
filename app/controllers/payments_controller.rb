class PaymentsController < ApplicationController
  def new
    @order = Order.find(params[:order_id])
  end
end
