class PagesController < ApplicationController
  before_action :find_current_user, only: %i[update new create confirmed]
  skip_before_action :verify_authenticity_token

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
    if @user.update(user_params)
      redirect_to new_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def new
    @products = Product.all
    @existing = {}
    @existing_cart = []
    @remaining_credit = @user.credit
    if @user.order.nil?
      order = Order.new
      order.user = @user
      order.save!
    elsif @user.order.cart_items.any?
      @user.order.cart_items.each do |item|
        @existing[item.product.name] = item.quantity
      end
      @existing_cart = @user.order.cart_items
    end
  end

  def create
    CartItem.where(order: @user.order).destroy_all

    cart_item_params.each do |data|
      CartItem.create(order: @user.order, product: Product.find(data['id'].to_i), quantity: data['quantity'].to_i) if data['quantity'].to_i > 0
    end

    @user.credit = credits_params
    @user.save!
    OrderMailer.with(user: @user).order_created.deliver_later

    respond_to do |f|
      f.html
      f.json
    end
  end

  def confirmed
    @order = @user.order
  end

  private

  def find_current_user
    if session[:user_id].nil?
      redirect_to root_path
    else
      @user = User.find(session[:user_id])
    end
  end

  def cart_item_params
    params.fetch(:cart_items)
  end

  def credits_params
    params.require(:credits)
  end

  def order_params
    params.require(:order).permit(:id)
  end

  def user_params
    params.require(:user).permit(:name, :block, :street, :unit, :postal, :handphone, :email_address)
  end
end
