class BooksController < ApplicationController

  def index
    @books = Book.all
    # search
    @books = @books.where("title ILIKE ? OR genre ILIKE ? OR author ILIKE ?", "%#{params[:query]}%", "%#{params[:query]}%", "%#{params[:query]}%") if params[:query].present?
    # filters
    @books = @books.where(genre: params[:genre].capitalize) if params[:genre].present?
    @books = @books.where(condition: params[:condition]) if params[:condition].present?
    @books = @books.where(:year => params[:from]..params[:to]) if params[:from].present? && params[:to].present?
  end

  def show
    @book = Book.find(params[:id])
  end
end
