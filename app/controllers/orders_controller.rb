class OrdersController < ApplicationController
<<<<<<< HEAD
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
=======

  def create
    @order = Order.new(order_params)
    @report.user = current_user
    if @report.save
      redirect_to root_path
>>>>>>> master
    else
      render :new, status: :unprocessable_entity
    end
  end

<<<<<<< HEAD
  private

  def order_params
    params.require(:order).permit(:id, :quantity)
  end
=======
  def confirm!
  end

  private

  def order_params
    params.require(:order).permit(cart_items: [:quantity])
  end

  # def product_params
  #   params.require(:product).permit(
  #     :name, :price,
  #     image_attributes: [ :id, :url, :alt, :caption ],
  #     variants_attributes: [ :id, :name, :price, :_destroy ]
  #   )
  # end
>>>>>>> master
end
