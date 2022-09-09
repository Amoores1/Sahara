class BasketItemsController < ApplicationController

  def create
    # Find associated physical book and current cart
    chosen_physical_book = PhysicalBook.find(params[:physical_book_id])
    current_cart = @current_cart

    # If cart already has this product then find the relevant basket_item and iterate quantity otherwise create a new basket_item for this physical_book

    # if current_cart.physical_books.include?(chosen_physical_book)

    #   # Find the line_item with the chosen_physical_book
    #   # @basket_item = current_cart.basket_items.find_by(:physical_book_id => chosen_physical_book)
    #   # Iterate the line_item's quantity by one
    #   # @basket_item.quantity += 1

    #   # If the book is already on the basket don't allow to add and return to books list
    # else
    # end

    @basket_item = BasketItem.new
    @basket_item.cart = current_cart
    @basket_item.physical_book = chosen_physical_book

    # Save and redirect to cart show path
    @basket_item.save
    @cart_open = true
    redirect_back fallback_location: cart_path(current_cart)
  end

  def destroy
    @basket_item = BasketItem.find(params[:id])
    @basket_item.destroy
    redirect_to cart_path(@current_cart)
  end

  # def add_quantity
  #   @basket_item = BasketItem.find(params[:id])
  #   @basket_item.quantity += 1
  #   @basket_item.save
  #   redirect_to cart_path(@current_cart)
  # end

  # def reduce_quantity
  #   @basket_item = BasketItem.find(params[:id])
  #   if @basket_item.quantity > 1
  #     @basket_item.quantity -= 1
  #   end
  #   @basket_item.save
  #   redirect_to cart_path(@current_cart)
  # end

  private

  def basket_item_params
    params.require(:basket_item).permit(:physical_book_id, :cart_id)
  end
end
