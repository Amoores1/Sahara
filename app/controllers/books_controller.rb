class BooksController < ApplicationController
  # def index
  #   @books = Book.all
  # end

  def index
    if params[:query].present?
      @books = Book.where("title ILIKE ?", "%#{params[:query]}%")
    else
      @books = Book.all
    end
  end
end
