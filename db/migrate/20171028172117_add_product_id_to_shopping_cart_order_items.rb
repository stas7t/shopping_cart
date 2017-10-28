class AddProductIdToShoppingCartOrderItems < ActiveRecord::Migration[5.1]
  def change
    add_column :shopping_cart_order_items, :product_id, :integer
  end
end
