class PaymentsController < ApplicationController
  def new
    @order = Order.find(params[:order_id])
    # @order = current_user.orders.where(pay_status: 'pending')
  end
end
