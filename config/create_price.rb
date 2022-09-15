require 'rubygems'
require 'stripe'
Stripe.api_key = "sk_test_51LhrGULuTCmLyNCcnp3ZFPBLNLc57xkr3SKR6U25haD2YQktvp1NiMY95YiJUwFFoDeINFgvZsUwegvlmb6dV8Ze00FUo3PDWy"

starter_subscription = Stripe::Product.create(
  name: 'Starter Subscription',
  description: '$12/Month subscription',
)

starter_subscription_price = Stripe::Price.create(
  currency: 'usd',
  unit_amount: 1200,
  recurring: {interval: 'month'},
  product: starter_subscription['id'],
)

puts "Success! Here is your starter subscription product id: #{starter_subscription.id}"
puts "Success! Here is your starter subscription price id: #{starter_subscription_price.id}"
