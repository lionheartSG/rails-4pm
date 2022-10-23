class OrdersController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_before_action :authenticate_user!

  def index
    @order = Order.find(1)
  end

  def create
    @order = Order.new(order_params)
    @order.save
    if @order.save == true
      redirect_to product_path(@product)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def order_params
    params.require(:order).permit(:id, :quantity)
  end
end
