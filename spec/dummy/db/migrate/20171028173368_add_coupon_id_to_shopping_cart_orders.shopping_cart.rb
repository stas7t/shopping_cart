# This migration comes from shopping_cart (originally 20171028172612)
class AddCouponIdToShoppingCartOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :shopping_cart_orders, :coupon_id, :integer
  end
end
