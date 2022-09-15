class AddStripePriceToPhysicalBooks < ActiveRecord::Migration[7.0]
  def change
    add_monetize :physical_books, :stripe_price, currency: { present: false }
  end
end
