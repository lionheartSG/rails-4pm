class User < ApplicationRecord
  has_one :order
  validates :name, :block, :street, :unit, :postal, :handphone, :email_address, :uniquecode, presence: true
  validates :handphone, numericality: { only_integer: true }
  validates :email_address, format: { with: /\A.*@.*\.\w+(\.\w+)?\z/ }
end
