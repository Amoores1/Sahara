class BooksController < ApplicationController

  def index
    if params[:query].present?
      @books = Book.where("title ILIKE ?", "%#{params[:query]}%")
    elsif params[:genre].present?
      @books = Book.where(genre: params[:genre].capitalize)
    elsif params[:condition].present?
      @books = Book.where(condition: params[:condition].capitalize)
    elsif params[:from].present? && params[:to].present?
      @books = Book.where(:year => params[:from]..params[:to])
    else
      @books = Book.all
    end

    # @bookstore = Bookstore.find(params[:bookstore_id])
  end

  def show
    @book = Book.find(params[:id])
    
    @markers = @book.bookstores.geocoded.map do |bookstore|
      {
        lat: bookstore.latitude,
        lng: bookstore.longitude,
        # take more info to the view
        info_window_map: render_to_string(partial: "info_window_map", locals: { bookstore: bookstore })
      }
    end

    @physical_books = PhysicalBook.where(book_id: @book.id)
    # @bookstores = Bookstore.all


    # @physical_books.each do |physical_book|
    #   @bookstores = Bookstore.where(bookstore_id: @physical_books.)
    # end

    # @bookstores = Bookstore.where(bookstore_: @physical_books.bookstore)
  end

end
