# This migration comes from shopping_cart (originally 20171028155219)
class CreateShoppingCartUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :shopping_cart_users do |t|

      t.timestamps
    end
  end
end
