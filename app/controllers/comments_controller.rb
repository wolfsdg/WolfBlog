class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment])

    respond_to do |format|
      if @comment.save
        UserMailer.confirm_comment_post(@comment).deliver
        format.html { redirect_to @post, notice: 'Status was successfully created.' }
        format.json { render json: @post, comment: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, comment: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post = Post.find(params[:id])
    
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end
end
