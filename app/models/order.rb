class Order < ApplicationRecord
  belongs_to :user
  accepts_nested_attributes_for :cart_items
end
