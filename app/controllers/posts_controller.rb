class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new(id: current_user.id)
  end

  def create
    @post = Post.new(post_params)
    @post.save
  end

  private
  def post_params
    params.require(:post).permit(:title, :text).merge(author_id: current_user.id)
  end
end
