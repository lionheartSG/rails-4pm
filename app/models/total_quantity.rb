class TotalQuantity < ApplicationRecord
  belongs_to :product

  def self.total_quantities
    products = Product.all
    total_quantities = []
    products.each do |product|
      total_quantity = 0
      carts = CartItem.where(product: product)
      carts.each do |cart|
        total_quantity += cart.quantity
      end
      total_quantities << { product: product, quantity: total_quantity }
    end
    total_quantities
  end
end
