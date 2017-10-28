# This migration comes from shopping_cart (originally 20171028171039)
class CreateShoppingCartOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :shopping_cart_orders do |t|
      t.string :number
      t.integer :status

      t.timestamps
    end
  end
end
