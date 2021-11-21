class CommentsController < ApplicationController

  def create
    @peep = Peep.find(params[:peep_id])
    @comment = @peep.comments.create(comment_params)
    redirect_to peep_path(@peep)
  end

  def destory 
    @peep = Peep.find(params[:peep_id])
    @comment = @peep.comments.find(params[:id])
    @peep.destroy
    redirect_to peep_path(@peep)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
