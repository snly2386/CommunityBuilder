class ProjectsController < ApplicationController
  def create
    @project = Project.new(project_params)
    @project.user_id = current_user.id
    @image = params[:project][:image]
    @project.image = @image.original_filename
    if params[:project][:address] == ""
      flash[:address] = "Enter an Address"
      redirect_to "/users/#{current_user.id}"
    
    elsif @project.save 
    flash[:create] = "Successfully Listed Project"
    redirect_to "/users/#{current_user.id}/projects/#{@project.id}"
  end
  end

  def show
    @project = Project.find(params[:id])
    @comments = @project.comments
  end

  def index
    @projects = Project.all
    @cities = []
    @projects.each do |project| 
      if !@cities.include?(project.city)
        @cities.push(project.city)
      end
    end
    @cities.sort!
  end

  def filtered_index
    @city = params[:city]
    @projects = Project.where(:city => @city)
    @projects_sorted = @projects.sort_by{|project| project.created_at}.reverse
  end

  private
  def project_params
    params.require(:project).permit(:address, :description, :name, :city)
  end

end
