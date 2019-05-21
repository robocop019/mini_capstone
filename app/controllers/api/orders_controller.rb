class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render 'index.json.jbuilder'
  end

  def create
    @order = Order.new(
                      user_id: current_user.id
                      )

    @order.store_totals

    if @order.save
      carted_products = CartedProduct.where(status: "carted", user_id: current_user.id)
      carted_products.update(order_id: @order.id)
      carted_products.update(status: "purchased")
      render 'show.json.jbuilder', status: :created
    else
      render json: {errors: @order.errors.full_messages}, status: :bad_request
    end 
  end
end