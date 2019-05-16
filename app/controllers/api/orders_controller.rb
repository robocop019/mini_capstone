class Api::OrdersController < ApplicationController
  def index
    if current_user
      @orders = current_user.orders

      render 'index.json.jbuilder'
    else
      render json: []
    end
  end

  def create
    if current_user

      subtotal = params[:quantity].to_i * Product.find(params[:product_id]).price.to_i
      tax = subtotal * 0.08
      total = subtotal + tax

      @order = Order.new(
                        user_id: current_user.id,
                        product_id: params[:product_id],
                        quantity: params[:quantity],
                        subtotal: subtotal,
                        tax: tax,
                        total: total
                        )

      if @order.save
        render 'show.json.jbuilder', status: :created
      else
        render json: {errors: @order.errors.full_messages}, status: :bad_request
      end 

    else
      render json: []
    end
  end
end
