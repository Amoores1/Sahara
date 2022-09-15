class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :current_cart
  before_action :close_cart

  private

  def close_cart
    @cart_open = false
  end

  def current_cart
    if session[:cart_id]
      cart = Cart.find_by(:id => session[:cart_id])
      if cart.present?
        @current_cart = cart
      else
        session[:cart_id] = nil
      end
    end

    if session[:cart_id] == nil
      @current_cart = Cart.create
      session[:cart_id] = @current_cart.id
    end
  end

  # For image absolute urls (meta)
  # Make sure your production DOMAIN variable is set with your domain name.
  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end
