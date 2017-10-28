FactoryGirl.define do
  factory :shopping_cart_order, class: 'ShoppingCart::Order' do
    number "MyString"
    status 1
  end
end
