class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @prototype = 
      if @comment.save
        redirect_to prototype_path
      else
        @protoptype = @comment.prototype
        @comments = @prototype.comments
        render "prototypes/show"
      end
  end

  private

  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, prototype_id: params[:prototpe_id]) 
  end
end