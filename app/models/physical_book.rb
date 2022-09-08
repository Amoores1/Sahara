class PhysicalBook < ApplicationRecord
  belongs_to :book
  belongs_to :bookstore
end

# physical = PhysicalBook.first
# physical.book
# => returns the book object
