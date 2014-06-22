class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to "/users/#{current_user.id}"
    end
    @projects = Project.all
    @filtered = @projects[0..8]
  end
end
