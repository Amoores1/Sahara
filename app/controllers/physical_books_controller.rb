class PhysicalBooksController < ApplicationController

  def index
    # @physical_books = PhysicalBook.all
    @bookstore = Bookstore.find(params[:bookstore_id])
    @physical_books = PhysicalBook.where(bookstore: @bookstore)
    # @bookstores = Bookstore.where(physical_book: @physical_book)
  end


  private

  def booking_params
    params.require(:booking).permit(:total_price, :start_date, :end_date, :user_id, :car_id)
  end
end
