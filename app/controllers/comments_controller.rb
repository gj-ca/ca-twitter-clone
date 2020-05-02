class CommentsController < ApplicationController

  before_action :get_comment, only: [:destroy] #,:show]

  def create
    @comment = Comment.new(comment_params)
    @comment.twite_id = params[:twite_id]
    @comment.user_id = current_user.id
    @comment.save
    redirect_to twite_path(params[:twite_id])
  end

  def show
    # Fixed this easy
    @comments = Comment.where(twite_id: params[:twite_id])
    @comment = @comments[params[:comment_id].to_i - 1]
  end

  def update
  end

  def destroy
    # @comment = Comment.find(params[:comment_id]) #=> now in get_comment
    @comment.delete
    redirect_to "/twites/#{params[:twite_id]}"
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end

  def get_comment
    @comment = Comment.find(params[:comment_id])
  end
end
