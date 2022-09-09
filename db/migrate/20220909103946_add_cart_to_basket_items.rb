class AddCartToBasketItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :basket_items, :cart, foreign_key: true
  end
end

