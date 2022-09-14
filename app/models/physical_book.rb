class PhysicalBook < ApplicationRecord
  belongs_to :book
  belongs_to :bookstore

  has_many :basket_items, dependent: :destroy
  monetize :stripe_price_cents
end

# physical = PhysicalBook.first
# physical.book
# => returns the book object
