class AddUserIdToShoppingCartAddresses < ActiveRecord::Migration[5.1]
  def change
    add_column :shopping_cart_addresses, :user_id, :integer
  end
end
