class Api::ProductsController < ApplicationController
  def index
    @products = Product.all.order(:id)

    is_discount = params[:discount]
    sorted = params[:sort]
    sort_desc = params[:sort_order]

    if is_discount == true
      @products = @products.where("price < ?", "105")
    elsif sorted == "price" && sort_desc == "desc"
      @products = @products.order(price: :desc)
    elsif sorted == "price"
      @products = @products.order(price: :asc)
    end     

    render 'index.json.jbuilder'
  end

  def create
    @product = Product.new(
                           name: params[:name],
                           price: params[:price],
                           image_url: params[:image_url],
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