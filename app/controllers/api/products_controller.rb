class Api::ProductsController < ApplicationController
  before_action :authenticate_admin, only: [:create, :update, :destroy]

  def index
      @products = Product.all

      search_term = params[:search]
      is_discount = params[:discount]
      sorted = params[:sort]
      sort_desc = params[:sort_order]

      if search_term
        @products = @products.where("name iLIKE ?", "%#{search_term}%")
      end

      if is_discount == "true"
        @products = @products.where("price < ?", "105")
      end

      if sorted == "price" && sort_desc == "desc"
        @products = @products.order(price: :desc)
      elsif sorted == "price"
        @products = @products.order(:price)
      else
        @products = @products.order(:id)
      end     

      render 'index.json.jbuilder'
  end

  def create
    @product = Product.new(
                           name: params[:name],
                           price: params[:price],
                           supplier_id: params[:supplier_id],
                           description: params[:description]
                          )
    if @product.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @product = Product.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    @product.instock = params[:instock] || @product.instock

    if @product.save
      render 'show.json.jbuilder'
    else
      render json: {message: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render json: {message: "Successfully deleted product."}
  end
end