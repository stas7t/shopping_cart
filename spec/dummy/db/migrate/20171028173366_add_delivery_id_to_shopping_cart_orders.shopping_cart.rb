# This migration comes from shopping_cart (originally 20171028172521)
class AddDeliveryIdToShoppingCartOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :shopping_cart_orders, :delivery_id, :integer
  end
end
