class ProjectsController < ApplicationController
  def create
    @project = Project.create(:name => params[:name], :address => params[:address], :description => params[:description], :image => params[:image].original_filename)
    flash[:create] = "Successfully Listed Project"
    redirect_to "/users/#{current_user.id}/projects/#{@project.id}"
  end

  def show
    @project = Project.find(params[:id])
    @comments = @project.comments
  end

  def index

  end
end
