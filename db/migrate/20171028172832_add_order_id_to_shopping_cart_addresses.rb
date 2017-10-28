class AddOrderIdToShoppingCartAddresses < ActiveRecord::Migration[5.1]
  def change
    add_column :shopping_cart_addresses, :order_id, :integer
  end
end
