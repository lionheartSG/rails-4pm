class PagesController < ApplicationController
  before_action :find_current_user, only: %i[update new create confirmed]

  def home
  end

  def edit
    if params[:pages].nil?
      redirect_to root_path
    else
      @user = User.find_by(uniquecode: params[:pages][:uniquecode])
      if @user
        session[:user_id] = @user.id
      else
        redirect_to root_path, flash: { notice: "Invalid code!" }
      end
    end
  end

  def update
    @user.update(user_params)
    redirect_to new_path
    # render :edit, status: :unprocessable_entity
  end

  def new
    @products = Product.all
    @cart = CartItem.new
    if @user.order.nil?
      order = Order.new
      order.user = @user
      order.save!
    end
  end

  def create
    information = request.raw_post
    data_parsed = JSON.parse(information)
    data_parsed.each do |data|
      CartItem.create(order_id: @user.order, product_id: data[0]['id'].to_i, quantity: data[0]['quantity'].to_i) if data[0]['quantity'].to_i > 0
    end
    redirect_to confirmed_path
  end

  def confirmed
    @order = Order.find(params[:id])
  end

  private

  def find_current_user
    if session[:user_id].nil?
      redirect_to root_path
    else
      @user = User.find(session[:user_id])
    end
  end

  def order_params
    params.require(:order).permit(:id)
  end

  def user_params
    params.require(:user).permit(:name, :block, :street, :unit, :postal, :handphone, :email_address)
  end
end
