FactoryGirl.define do
  factory :shopping_cart_coupon, class: 'ShoppingCart::Coupon' do
    code "MyString"
    discount "9.99"
    active false
  end
end
