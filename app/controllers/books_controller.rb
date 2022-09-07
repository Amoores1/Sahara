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
  end

  def show
    @book = Book.find(params[:id])
  end
end
