class AddCoordinatesToBookstores < ActiveRecord::Migration[7.0]
  def change
    add_column :bookstores, :latitude, :float
    add_column :bookstores, :longitude, :float
  end
end
