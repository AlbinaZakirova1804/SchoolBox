class AddUserIdToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :user_id, :integer
    add_column :orders, :item_id, :integer
    add_column :orders, :total_sum, :float
  end
end
