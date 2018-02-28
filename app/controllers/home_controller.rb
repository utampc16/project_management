class HomeController < ApplicationController
  def index
  	debugger
    #@assign_task = AssignTask.find(params[:id])
    @home = Home.all
  end
end
