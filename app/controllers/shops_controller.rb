class ShopsController < ApplicationController

  def get

    @items = Product.all
    @receipt = Receipt.where(storeId: session[:id])

    if session[:user_name]
      @notice = "#{session[:user_name]}でログインしています。"
    end

  end

  def post

    redirect_to("/management/shops")

  end

  def login

    if params[:name].nil? && params[:pwd].nil? then #この実装はいいんだろうか...

    else
      if Store.find_by(name: params[:name],pwd: params[:pwd]).nil? then
        #login sippai
      else
        session[:user_name] = params[:name]
        session[:id] = Store.find_by(name: params[:name],pwd: params[:pwd]).id
        redirect_to("/management/shops")
      end
    end

  end

  def register

    if params[:name].empty? && params[:pwd].empty? && params[:addles].empty? then


    else

      @registeringData = Store.new(name: params[:name] , pwd: params[:pwd] , addles: params[:addles])
      @registeringData.save

      redirect_to("/management/login")

    end

  end

  def logout
    session[:user_name] = nil #logout これでいいのかしら
    redirect_to("/management")
  end

  def entry
    @receipt = Receipt.new(productsId: params[:id],storeId: session[:id], howManyHave: params[:stock])
    @receipt.save
    redirect_to("/management/shops")
  end

  def remove
    @receipt = Receipt.find_by(id: params[:id])
    @receipt.destroy
    redirect_to("/management/shops")
  end
end
