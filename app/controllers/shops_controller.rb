class ShopsController < ApplicationController

  def get

    if session[:user_name]
      @notice = "#{session[:user_name]}でログインしています。"
    end

  end

  def post

    redirect_to("/management/shops")

  end

  def login

    if params[:name].empty? && params[:pwd].empty? then #この実装はいいんだろうか...

    else
      if Store.find_by(name: params[:name],pwd: params[:pwd]).nil? then
        #login sippai
      else
        session[:user_name] = params[:name]
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

end
