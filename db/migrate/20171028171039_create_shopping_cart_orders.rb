class CreateShoppingCartOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :shopping_cart_orders do |t|
      t.string :number
      t.integer :status

      t.timestamps
    end
  end
end
