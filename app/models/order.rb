class Order < ApplicationRecord

  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products

  def calculate_subtotal
    # subtotal_sum = 0
    # user.cart.each do |carted_product|
    #   subtotal_sum += carted_product.subtotal
    # end    
    self.subtotal = user.cart.sum { |carted_product| carted_product.subtotal }
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

  def update_cart
    user.cart.update_all(order_id: self.id, status: "purchased")
  end
end
