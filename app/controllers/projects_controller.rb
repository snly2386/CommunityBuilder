class ProjectsController < ApplicationController
  def create
    @project = Project.new(project_params)
    @project.user_id = current_user.id
    @image = params[:project][:image]
    @project.image = @image.original_filename
    if @project.save 
    flash[:create] = "Successfully Listed Project"
    redirect_to "/users/#{current_user.id}/projects/#{@project.id}"
  end
  end

  def show
    @project = Project.find(params[:id])
    @comments = @project.comments
  end

  def index

  end

  private
  def project_params
    params.require(:project).permit(:address, :description, :name)
  end

end
