class Order < ApplicationRecord

  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products

  def calculate_subtotal
    self.subtotal = 0
    carted_products = CartedProduct.where(status: "carted", user_id: user.id)
    carted_products.each do |carted_product|
      self.subtotal += carted_product.quantity * Product.find(carted_product.product_id).price
    end
  end

  def calculate_tax
      self.tax = subtotal * 0.08
  end

  def calculate_total
      self.total = subtotal + tax
  end

  def store_totals
    calculate_subtotal
    calculate_tax
    calculate_total
  end
end
