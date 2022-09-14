class Order < ApplicationRecord
  belongs_to :user

  has_many :physical_books, through: :basket_items
  has_many :basket_items, dependent: :destroy

  after_save :set_total_price
  monetize :amount_cents

  private

  def set_total_price
    self.update_column(:total_price, total)
  end

  def total
    basket_items.sum{|item| item.physical_book.price }
  end
end
