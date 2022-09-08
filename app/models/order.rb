class Order < ApplicationRecord
  belongs_to :user

  has_many :physical_books, through: :basket_items
end
