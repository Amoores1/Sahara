class BookstoresController < ApplicationController
  def index
    @bookstores = Bookstore.all
    # The `geocoded` scope filters only bookstores with coordinates
    @markers = @bookstores.geocoded.map do |bookstore|
      {
        lat: bookstore.latitude,
        lng: bookstore.longitude,
        # take more info to the view
        info_window_map: render_to_string(partial: "info_window_map", locals: { bookstore: bookstore })
      }
    end
  end
end
