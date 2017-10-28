# This migration comes from shopping_cart (originally 20171028172544)
class AddCreditCardIdToShoppingCartOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :shopping_cart_orders, :credit_card_id, :integer
  end
end
