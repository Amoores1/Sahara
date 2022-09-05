class BasketItem < ApplicationRecord
  belongs_to :order
  belongs_to :physical_book
end
