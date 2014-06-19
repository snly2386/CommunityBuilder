class UsersController < ApplicationController
   before_filter :authenticate_user!

   def show 
    @project = Project.new
   end

   
end
