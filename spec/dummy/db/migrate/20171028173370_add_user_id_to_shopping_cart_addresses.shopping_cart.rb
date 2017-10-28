# This migration comes from shopping_cart (originally 20171028172817)
class AddUserIdToShoppingCartAddresses < ActiveRecord::Migration[5.1]
  def change
    add_column :shopping_cart_addresses, :user_id, :integer
  end
end
