class Ability
  include CanCan::Ability

  def initialize(user, session = nil)
    user ||= User.new
    if user.is_a? Admin
      can :manage, :all
    elsif user.is_a?(User) && user.persisted?
      can :read, [ShoppingCart::Coupon, ShoppingCart::Delivery]
      can %i[read create update], [ShoppingCart::Order, ShoppingCart::Address, ShoppingCart::CreditCard], user_id: user.id
      can :create, ShoppingCart::OrderItem
      can %i[update destroy], ShoppingCart::OrderItem, id: session[:order_item_ids].to_a
    else
      can :create, ShoppingCart::OrderItem
      can %i[update destroy], ShoppingCart::OrderItem, id: session[:order_item_ids].to_a
    end
  end
end
