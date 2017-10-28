# This migration comes from shopping_cart (originally 20171028170731)
class CreateShoppingCartBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :shopping_cart_books do |t|

      t.timestamps
    end
  end
end
