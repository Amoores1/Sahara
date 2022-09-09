class BasketItem < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :physical_book
  belongs_to :cart, optional: true

  # def sum_price
  #   self.quantity * self.physical_book.price
  # end
end
