# This migration comes from shopping_cart (originally 20171028172359)
class AddOrderIdToShoppingCartOrderItems < ActiveRecord::Migration[5.1]
  def change
    add_column :shopping_cart_order_items, :order_id, :integer
  end
end
