class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :year
      t.string :genre
      t.string :condition

      t.timestamps
    end
  end
end
