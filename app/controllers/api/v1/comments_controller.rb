class Api::V1::CommentsController < ApplicationController

  def index
    comments = Comment.all
  end

  def create
    comment = Comment.new(comment_params)

    if comment.save
      render json: comment
    else
      render json: {errors: comment.errors.full_messages}, status: :unprocessible_entity
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:input, :user_id, :project_id)
  end

end