FactoryGirl.define do
  factory :shopping_cart_address, class: 'ShoppingCart::Address' do
    first_name "MyString"
    last_name "MyString"
    address "MyString"
    city "MyString"
    country "MyString"
    zip "MyString"
    phone "MyString"
    type ""
  end
end
