class LikesController < ApplicationController

  def create 
    @user = current_user
    @comment = Comment.find(params[:comment_id])
    @like = Like.new
    @like.comment = @comment
    @like.user = @user
    @like.save 

    respond_to do |format|
      format.js 
    end 
  end

  def destroy
    @like = Post.find(params[:id])
    @like.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end

end
