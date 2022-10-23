class CartItemsController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_before_action :authenticate_user!
  def new
    @cart = CartItem.new
  end

  def create
    information = request.raw_post
    data_parsed = JSON.parse(information)
    data_parsed.each do |data|
      CartItem.create(order_id: 1, product_id: data[0]['id'].to_i, quantity: data[0]['quantity'].to_i) if data[0]['quantity'].to_i > 0
    end

    # if @cart.save == true
    #   redirect_to cart_item_path(@cart)
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end
end
