class PhysicalBook < ApplicationRecord
  belongs_to :book
  belongs_to :bookstore

  has_many :basket_items, dependent: :destroy
end
