class PagesController < ApplicationController

  def home
  end

  def edit
    @user = User.find_by(uniquecode: params[:pages][:uniquecode])
    redirect_to root_path, flash: { notice: "Invalid code!" } if @user.nil?
  end

  def update
    # update user based on new params
    # if successful, redirect to new_path(user)
    # user = User.find(params[:user][:id])
    # redirect_to new_path(code: user.uniquecode)
    @user = User.find(params[:user][:id])
    if @user.save
      session[:user_id] = @user.id
      redirect_to new_path(code: user.uniquecode)
    else
      redirect_to root_path, flash: { notice: "Invalid code!" } if @user.nil?
    end
  end

  def new
    session[:user_id] = @user.id
    @products = Product.all
    @cart = CartItem.new

  end

  def create
    @user = User.new(user_params)
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

  private

  def order_params
    params.require(:order).permit(:id)
  end
end
