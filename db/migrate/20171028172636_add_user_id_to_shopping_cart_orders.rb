class AddUserIdToShoppingCartOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :shopping_cart_orders, :user_id, :integer
  end
end
