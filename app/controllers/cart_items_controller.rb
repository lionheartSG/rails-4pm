class CartItemsController < ApplicationController
  def new
    @cart = CartItem.new
  end

  def create
    @cart = CartItem.new(cart_item_params)
    @cart.save
    if @cart.save == true
      redirect_to cart_item_path(@cart)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:order_id, :product_id, :quantity)
  end
end
