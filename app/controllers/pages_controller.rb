class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  skip_before_action :verify_authenticity_token

  def home
  end

  def new
    @products = Product.all
    @cart = CartItem.new
  end

  def create
    information = request.raw_post
    data_parsed = JSON.parse(information)
    data_parsed.each do |data|
      CartItem.create(order_id: 1, product_id: data[0]['id'].to_i, quantity: data[0]['quantity'].to_i) if data[0]['quantity'].to_i > 0
    end
    redirect_to confirmed_path
  end

  def confirmed
    @order = Order.find(params[:id])
  end

  def edit
    # after log in
      # if the @user == uniquecode
        # render the edit page
      # else
        # @user goes back to the home page
        # unprocessable entity

  end

  private

  def order_params
    params.require(:order).permit(:id)
  end
end
