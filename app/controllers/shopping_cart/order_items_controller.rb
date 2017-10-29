require_dependency 'shopping_cart/application_controller'

module ShoppingCart
  class OrderItemsController < ApplicationController
    # load_and_authorize_resource

    def create
      @order_item = OrderItem.create(order_item_params)
      order_item_ids << @order_item.id

      redirect_back(fallback_location: cart_path)
    end

    def update
      @order_item = OrderItem.find(params[:id])
      @order_item.update_attributes(order_item_params)
      @order_items = OrderItem.where(id: order_item_ids)

      redirect_back(fallback_location: cart_path)
    end

    def destroy
      @order_item = OrderItem.find(params[:id])
      @order_item.destroy
      order_item_ids.delete_if { |item_id| item_id == @order_item.id }

      redirect_back(fallback_location: cart_path)
    end

    private

    def order_item_ids
      session[:order_item_ids] ||= []
    end

    def order_item_params
      params.require(:order_item).permit(:quantity, :product_id)
    end
  end
end
