class Api::SuppliersController < ApplicationController
  before_action :authenticate_admin 

  def index
    @suppliers = Supplier.all
    render 'index.json.jbuilder'
  end

  def create
    @supplier = Supplier.new(
                            name: params[:name],
                            email: params[:email],
                            phone_number: params[:phone_number]
                            )
    render 'show.json.jbuilder'
  end

  def show

  end

  def update

  end

  def destory

  end
end
