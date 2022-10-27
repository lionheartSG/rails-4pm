class PagesController < ApplicationController

  def home
  end

  def edit
    @user = User.find_by(uniquecode: params[:pages][:uniquecode])
    redirect_to root_path, flash: { notice: "Invalid code!" } if @user.nil?
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

  def update
    # update user based on new params
    # if successful, redirect to new_path(user)
    user = User.find(params[:user][:id])
    redirect_to new_path(code: user.uniquecode)
  end

  private

  def order_params
    params.require(:order).permit(:id)
  end
end
