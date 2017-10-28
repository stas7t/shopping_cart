FactoryGirl.define do
  factory :shopping_cart_order, class: 'ShoppingCart::Order' do
    user
  end

  trait :with_order_item do
    after(:create) do |order|
      order.order_items = FactoryGirl.create_list(:order_item, 2)
      order.save!
    end
  end
end
