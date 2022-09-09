class ChangeOrderOnBasketItems < ActiveRecord::Migration[7.0]
  def change
    remove_column :basket_items, :order_id
    add_reference :basket_items, :order, foreign_key: true
  end
end
