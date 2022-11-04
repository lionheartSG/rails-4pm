class User < ApplicationRecord
  has_one :order
  validates :uniquecode, presence: true
end
