class CommentsController < ApplicationController

  def show
    @comments = Comment.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comments }
    end
  end 

  def new
    @comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment }
    end
  end

  def create
    @comment = Comment.new(params[:comment])

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment, notice: 'Status was successfully created.' }
        format.json { render json: @comment, comment: :created, location: @comment }
      else
        format.html { render action: "new" }
        format.json { render json: @comment.errors, comment: :unprocessable_entity }
      end
    end
  end
end
