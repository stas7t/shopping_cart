module ShoppingCart
  class OrderItem < ApplicationRecord
    belongs_to :product, class_name: ShoppingCart.product_class.to_s
    belongs_to :order, optional: true, class_name: 'ShoppingCart::Order'

    validates :quantity, presence: true, numericality: { only_integer: true,
                                                         greater_than: 0 }

    def total
      product.price * quantity
    end
  end
end
