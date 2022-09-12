class Cart < ApplicationRecord
  has_many :basket_items, dependent: :destroy
  has_many :physical_books, through: :basket_items

  def sub_total
    sum = 0
    self.basket_items.each do |basket_item|
      sum += basket_item.physical_book.price
    end
    return sum
  end
end
