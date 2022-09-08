class PhysicalBooksController < ApplicationController

  def index
    @physical_books = PhysicalBook.all
    @bookstore = Bookstore.find(params[:bookstore_id])
    @physical_books = PhysicalBook.where(bookstore: @bookstore)
    # @bookstores = Bookstore.where(physical_book: @physical_book)
  end


end
