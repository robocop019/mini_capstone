class User < ApplicationRecord
  has_secure_password
  
  validates :email, presence: true
  validates :email, uniqueness: true

  has_many :carted_products
  has_many :orders, through: :carted_products

end
