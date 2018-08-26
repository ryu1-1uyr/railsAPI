class ItemsController < ApplicationController

  def get
    @items = Product.all

    render :json => @items
  end

  def post

    @items = Product.new(name: params[:name], description: params[:description]  ,price: params[:price])
    @items.save

    redirect_to("/management/items/show")

  end

  def put

    @items = Product.find_by(id: params[:id])

    @items.name = params[:name]
    @items.description = params[:description]
    @items.price = params[:price]

    @items.save

    redirect_to("/management/items/show")

  end

  def delete

    @items = Product.find_by(id: params[:id])
    @items.destroy

    redirect_to("/management/items/show")

  end

  def register

  end

  def show
    @items = Product.all
  end

end
