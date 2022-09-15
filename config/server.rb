require 'stripe'
require 'sinatra'

# This is your test secret API key.
Stripe.api_key = 'sk_test_51LhrGULuTCmLyNCcnp3ZFPBLNLc57xkr3SKR6U25haD2YQktvp1NiMY95YiJUwFFoDeINFgvZsUwegvlmb6dV8Ze00FUo3PDWy'

set :static, true
set :port, 4242

YOUR_DOMAIN = 'http://localhost:4242'

post '/create-checkout-session' do
  content_type 'application/json'

  session = Stripe::Checkout::Session.create({
    basket_items: [{
      # Provide the exact Price ID (e.g. pr_1234) of the product you want to sell
      price: basket.physical_book.book.price
    }],
    mode: 'payment',
    success_url: YOUR_DOMAIN + '/success.html',
    cancel_url: YOUR_DOMAIN + '/cancel.html',
  })
  redirect session.url, 303
end
