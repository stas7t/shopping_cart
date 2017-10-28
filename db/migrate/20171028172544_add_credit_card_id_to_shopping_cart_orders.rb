class AddCreditCardIdToShoppingCartOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :shopping_cart_orders, :credit_card_id, :integer
  end
end
