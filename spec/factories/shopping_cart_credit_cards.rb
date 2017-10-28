FactoryGirl.define do
  factory :shopping_cart_credit_card, class: 'ShoppingCart::CreditCard' do
    number "MyString"
    name_on_card "MyString"
    month_year "MyString"
    cvv "MyString"
  end
end
