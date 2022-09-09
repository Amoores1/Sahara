class PhysicalBook < ApplicationRecord
  belongs_to :book
  belongs_to :bookstore

  has_many :basket_items, dependent: :destroy
end

# physical = PhysicalBook.first
# physical.book
# => returns the book object
