class Api::ProductsController < ApplicationController
  def all_products_action
    @products = Product.all
    render 'all_products_view.json.jbuilder'
  end

  def godzilla_action
    @product = Product.find(1)
    render 'godzilla_view.json.jbuilder'
  end

  def ghidorah_action
    @product = Product.find(2)
    render 'ghidorah_view.json.jbuilder'
  end

  def rodan_action
    @product = Product.find(3)
    render 'rodan_view.json.jbuilder'
  end
end
