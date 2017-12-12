FactoryGirl.define do
  factory :shopping_cart_coupon, class: 'ShoppingCart::Coupon' do
    code 'TESTCOUPONE2017'
    discount 9.99
  end
end
