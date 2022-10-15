class OrdersController < ApplicationController

  def create
    @order = Order.new(order_params)
    @report.user = current_user
    if @report.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

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
end
