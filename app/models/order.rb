class Order < ApplicationRecord

  belongs_to :user
  belongs_to :product

  def calculate_subtotal
    self.subtotal = quantity * product.price
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
