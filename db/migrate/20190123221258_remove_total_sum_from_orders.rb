class RemoveTotalSumFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :total_sum
  end
end
