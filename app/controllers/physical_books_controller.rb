class PhysicalBooksController < ApplicationController

  def index
    @physical_books = PhysicalBook.all
    @bookstore = Bookstore.find(params[:bookstore_id])
    @physical_books = PhysicalBook.where(bookstore: @bookstore)
    # @bookstores = Bookstore.where(physical_book: @physical_book)
  end

  def new
    @physical_book = PhysicalBook.new
  end

  def create
    @physical_book = PhysicalBook.create(physical_params)
    redirect_to physical_books_path
  end

  def edit
    @physical_book = PhysicalBook.find(params[:id])
  end

  def update
    @physical_book = PhysicalBook.find(params[:id])
    @physical_book.update(physical_params)
    redirect_to physical_books_path
  end

  def destroy
    @physical_book = PhysicalBook.find(params[:id])
    @physical_book.destroy
    redirect_to physical_books_path
  end


  private
  def physical_params
    params.require(:physical_book).permit(:price)
  end

  # def _physical
  #   # @physical_books = PhysicalBook.all
  #   @bookstore = Bookstore.find(params[:bookstore_id])
  #   @physical_books = PhysicalBook.where(bookstore: @bookstore)
  #   # @bookstores = Bookstore.where(physical_book: @physical_book)
  # end


end
