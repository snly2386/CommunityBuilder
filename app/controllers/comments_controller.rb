class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(:content => params[:content], :project_id => params[:project_id])
    @comment.save

    respond_to do |format|
      format.html {redirect_to "/users/current_user.id/projects/#{params[:project_id]}"}
      format.js {render :layout => false}
    end
  end

  def show

  end
end
