# This migration comes from shopping_cart (originally 20171028154657)
class CreateShoppingCartOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :shopping_cart_order_items do |t|
      t.integer :quantity

      t.timestamps
    end
  end
end
