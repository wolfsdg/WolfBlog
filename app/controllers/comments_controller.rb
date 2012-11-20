class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment])

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @post, notice: 'Status was successfully created.' }
        format.json { render json: @post, comment: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, comment: :unprocessable_entity }
      end
    end
  end
end
