class User < ApplicationRecord
  validates :uniquecode, presence: true
end
