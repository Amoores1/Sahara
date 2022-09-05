class CreateBookstores < ActiveRecord::Migration[7.0]
  def change
    create_table :bookstores do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.string :name

      t.timestamps
    end
  end
end
