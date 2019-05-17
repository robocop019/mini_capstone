class Api::ImagesController < ApplicationController
  before_action :authenticate_admin

  def index
    @images = Image.all
    render 'index.json.jbuilder'
  end

  def create
    @image = Image.new(
                        product_id: @product.id,
                        url: params[:image_url]
                        )
    @image.save
    render 'show.json.jbuilder'
  end

  def show

  end

  def update

  end

  def destroy

  end
end
