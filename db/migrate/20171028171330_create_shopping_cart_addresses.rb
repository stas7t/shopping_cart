class CreateShoppingCartAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :shopping_cart_addresses do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :country
      t.string :zip
      t.string :phone
      t.string :address_type

      t.timestamps
    end
  end
end
