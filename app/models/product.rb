class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  validates :price, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0}
  

  validates :description, presence: true
  # validates :description, length: {in: 50..200}

  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :product_categories
  has_many :categories, through: :product_categories
  has_many :carted_products
  
  # def categories
  #   product_categories.map { |product_category| product_category.category }
  # end

  def is_discounted?
    price <= 100
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
