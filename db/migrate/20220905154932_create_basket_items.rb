class CreateBasketItems < ActiveRecord::Migration[7.0]
  def change
    create_table :basket_items do |t|
      t.references :order, null: false, foreign_key: true
      t.references :physical_book, null: false, foreign_key: true
      t.integer :quantity
      t.integer :sum_price

      t.timestamps
    end
  end
end
