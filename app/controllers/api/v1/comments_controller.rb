class Api::V1::CommentsController < ApplicationController
  def index
    comments = Comment.all
    render json: comments
  end

  def create
    comment = Comment.new(comment_params)

    if comment.save
      render json: comment, status: 200
    else
      render json: {errors: "There was a problem saving the comment."}, status: :unprocessible_entity
    end
  end

  def destroy
    comment = Comment.find_by(id: params[:id])
    comment.destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:input, :user_id, :project_id)
  end

end