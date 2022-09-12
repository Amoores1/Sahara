class RemoveConditionFromBooks < ActiveRecord::Migration[7.0]
  def change
    remove_column :books, :condition, :string
  end
end
