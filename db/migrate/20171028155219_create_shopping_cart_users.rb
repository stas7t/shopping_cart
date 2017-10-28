class CreateShoppingCartUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :shopping_cart_users do |t|

      t.timestamps
    end
  end
end
