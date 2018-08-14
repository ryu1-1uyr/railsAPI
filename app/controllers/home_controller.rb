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
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]
    @post.save
    redirect_to("/top")
  end

  def delete
    @post = Post.find_by(id: params[:id])
    @post.destroy

    redirect_to("/top")
  end


  def top
    @post = Post.all
  end

end
