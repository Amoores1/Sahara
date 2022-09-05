class CreatePhysicalBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :physical_books do |t|
      t.integer :price
      t.boolean :available
      t.references :book, null: false, foreign_key: true
      t.references :bookstore, null: false, foreign_key: true

      t.timestamps
    end
  end
end
