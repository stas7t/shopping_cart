module ShoppingCart
  class OrderItem < ApplicationRecord
    belongs_to :product, class_name: 'Book'
    belongs_to :order, optional: true

    validates :quantity, presence: true, numericality: { only_integer: true,
                                                         greater_than: 0 }

    def total
      product.price * quantity
    end
  end
end
