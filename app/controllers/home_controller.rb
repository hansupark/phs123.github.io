class HomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    @post = Post.new
    @post.title = params[:tiger_title]
    @post.content = params[:tiger_content]
    @post.save
    redirect_to '/home/index'
  end
end
