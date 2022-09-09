class Book < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_title_and_author,
    against: [ :title, :author ],
    using: {
      tsearch: { prefix: true }
    }
  has_one_attached :photo
  has_many :physical_books
  has_many :bookstores, through: :physical_books
end

# book = Book.first
# book.physical_books
# => [ all the books that belongs_to  this book ]

# FOR THE MARKERS
# book.bookstores
