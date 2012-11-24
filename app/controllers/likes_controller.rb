class LikesController < ApplicationController

  def new 
    @comment = Comment.find(params[:comment_id])
    @like = Like.new
    @like.comment = @comment
    @like.user = current_user
    @like.save 

    respond_to do |format|
      format.js 
    end 
  end

  def destroy
    @comment = Comment.find(params[:comment_id])
    @like = Like.find(params[:id])
    @like.destroy

    respond_to do |format|
      format.js
    end
  end

end
