class ChangeInStockInProducts < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :instock, :boolean, default: true
  end
end
