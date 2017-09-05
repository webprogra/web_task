class PostsController < ApplicationController
  def create
    @admin = Admin.find(params[:admin_id])
    @post = @admin.posts.create(post_params)
    redirect_to admin_path(@admin)
  end
 
  private
    def post_params
      params.require(:post).permit(:title, :context,:type)
    end
end
