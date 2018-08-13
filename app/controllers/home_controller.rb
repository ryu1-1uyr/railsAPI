class HomeController < ApplicationController
  def get
    @posts = Post.all

    render :json => @posts

  end

  def post
    @post = Post.new(content: params[:content])
    @post.save
    redirect_to("/top")

  end

  def put

  end

  def delete

  end

  def view

  end

  def top
    @post = Post.all
  end

end
