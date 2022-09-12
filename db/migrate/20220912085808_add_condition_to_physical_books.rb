class AddConditionToPhysicalBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :physical_books, :condition, :string
  end
end
