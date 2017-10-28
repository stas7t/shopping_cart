FactoryGirl.define do
  factory :shopping_cart_credit_card, class: 'ShoppingCart::CreditCard' do
    number '1111222233334444'
    name_on_card 'JON SNOW'
    month '11'
    year '21'
    cvv '123'
  end
end
