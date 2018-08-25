class ShopsController < ApplicationController

  def get

  end

  def post

    redirect_to("/management/shops")

  end

  def login

  end

  def register
    @registeringData = Store.new(name: params[:name] , pwd: params[:pwd] , addles: params[:addles])
    @registeringData.save

    redirect_to("/management/login")
  end

end
