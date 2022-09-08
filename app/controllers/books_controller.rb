class BooksController < ApplicationController

  def index
    @books = Book.all
    # search
    @books = @books.where("title ILIKE ? OR genre ILIKE ? OR author ILIKE ?", "%#{params[:query]}%", "%#{params[:query]}%", "%#{params[:query]}%") if params[:query].present?
    # filters
    @books = @books.where(genre: params[:genre].capitalize) if params[:genre].present?
    @books = @books.where(condition: params[:condition]) if params[:condition].present?
    @books = @books.where(:year => params[:from]..params[:to]) if params[:from].present? && params[:to].present?

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
