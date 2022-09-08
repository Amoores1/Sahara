class BasketItem < ApplicationRecord
  belongs_to :order
  belongs_to :physical_book
  belongs_to :cart

  def sum_price
    self.quantity * self.physical_book.price
  end
end
