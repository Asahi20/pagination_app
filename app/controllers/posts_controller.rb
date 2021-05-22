class PostsController < ApplicationController

  PER_PAGE = 10

  def index
    @posts = Post.page(params[:page]).per(PER_PAGE)
  end

  def new
    @post = Post.new
  end


  def create
    post = Post.create!(post_params)
    redirect_to post
  end


  private

  def post_params
    params.require(:post).permit(:body)
  end


end
