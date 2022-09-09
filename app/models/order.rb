class Order < ApplicationRecord
  belongs_to :user

  has_many :physical_books, through: :basket_items
  has_many :basket_items, dependent: :destroy
end
