class BookstoresController < ApplicationController
  def index
    @bookstores = Bookstore.all
    # The `geocoded` scope filters only bookstores with coordinates
    @markers = @bookstores.geocoded.map do |bookstore|
      {
        lat: bookstore.latitude,
        lng: bookstore.longitude
      }
    end
  end
end
