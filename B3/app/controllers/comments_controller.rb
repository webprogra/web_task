class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    if params[:allowed]=="1"
      @comment.nickname="博主"
      @comment.allowed=1
      @comment.save
      redirect_to post_path(@post)
    else 
      @comment.allowed=0
      @comment.save
      redirect_to guest_path(@post)
    end
  end
  def edit
    @post = Post.find(params[:id])
  end 
  def update
    @post=Post.find(params[:post_id])
    @comment=@post.comments.update(allowed:1)
    redirect_to post_path(@post)
  end
  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end
  private
    def comment_params
      params.require(:comment).permit(:nickname, :content ,:created_at)
    end
end
