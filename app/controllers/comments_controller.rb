class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to user_posts_path(current_user.id)
    else
      render :new
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_show_path(current_user.id)
  end

  private

  def comment_params
    @post = Post.find(current_user.id)
    params.require(:comment).permit(:text).merge(author_id: current_user.id, post_id: @post.id)
  end
end
