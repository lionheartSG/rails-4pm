class OrdersController < ApplicationController


  def create
    information = request.raw_post
    data_parsed = JSON.parse(information)
    data_parsed.each do |data|
      CartItem.create(order_id: 1, product_id: data[0]['id'].to_i, quantity: data[0]['quantity'].to_i) if data[0]['quantity'].to_i > 0
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
