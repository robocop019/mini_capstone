class AddInStockToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :instock, :boolean
  end
end
