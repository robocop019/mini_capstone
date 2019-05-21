class Api::CartedProductsController < ApplicationController
  before_action :authenticate_user

  def index
    @carted_products = CartedProduct.where(user_id: current_user.id)
    render 'index.json.jbuilder'
  end

  def create
    @carted_product = CartedProduct.new(
                                      status: "carted",
                                      user_id: current_user.id,
                                      product_id: params[:product_id],
                                      quantity: params[:quantity]
                                      )



    if @carted_product.save
      render 'show.json.jbuilder'
    else 
      render json: [message: "Product not added to cart"]
    end
  end

  def destroy
    carted_product = CartedProduct.find(params[:id])
    carted_product.update(status: "removed")
    render json: {message: "The product has been removed from your cart."}
  end
end
