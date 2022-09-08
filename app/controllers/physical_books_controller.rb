class PhysicalBooksController < ApplicationController

  def index
    @physical_books = PhysicalBook.all
    @bookstore = Bookstore.find(params[:bookstore_id])
    @physical_books = PhysicalBook.where(bookstore: @bookstore)
    # @bookstores = Bookstore.where(physical_book: @physical_book)
  end

  def new
    @physical_books = PhysicalBook.new
  end

  def create
    @physical_books = PhysicalBook.create(physical_params)
    redirect_to physical_books_path
  end

  def edit
    @physical_books = PhysicalBook.find(params[:id])
  end

  def update
    @physical_books = PhysicalBook.find(params[:id])
    @physical_books.update(physical_params)
    redirect_to physical_books_path
  end

  def destroy
    @physical_books = PhysicalBook.find(params[:id])
    @physical_books.destroy
    redirect_to physical_books_path
  end


  private
  def physical_params
    params.require(:physical_books).permit(:name, :price)
  end

  # def _physical
  #   # @physical_books = PhysicalBook.all
  #   @bookstore = Bookstore.find(params[:bookstore_id])
  #   @physical_books = PhysicalBook.where(bookstore: @bookstore)
  #   # @bookstores = Bookstore.where(physical_book: @physical_book)
  # end


end
