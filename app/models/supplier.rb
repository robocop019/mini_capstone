class Supplier < ApplicationRecord
  has_many :products
  # def products
  #   # the purpose of this method is to return a collection of all Products associated with this Supplier
  #   Product.where(supplier_id: id)
  # end
end
