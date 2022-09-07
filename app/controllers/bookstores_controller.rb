class BookstoresController < ApplicationController

  def index
    @bookstores = Bookstore.all
  end
end
