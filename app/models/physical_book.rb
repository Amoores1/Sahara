class PhysicalBook < ApplicationRecord
  belongs_to :book
  belongs_to :bookstore
end
