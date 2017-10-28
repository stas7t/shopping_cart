# This migration comes from shopping_cart (originally 20171028172117)
class AddProductIdToShoppingCartOrderItems < ActiveRecord::Migration[5.1]
  def change
    add_column :shopping_cart_order_items, :product_id, :integer
  end
end
