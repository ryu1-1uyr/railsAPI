class ItemsController < ApplicationController

  def get
    @items = Product.all

    render :json => @items
  end

  def post

  end

  def put

  end

  def delete

  end

end
