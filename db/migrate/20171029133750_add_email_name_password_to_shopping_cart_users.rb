class AddEmailNamePasswordToShoppingCartUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :shopping_cart_users, :email, :string
    add_column :shopping_cart_users, :name, :string
    add_column :shopping_cart_users, :password, :string
  end
end
