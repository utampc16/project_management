class TimesheetsController < ApplicationController
  def index
  	@timesheet = Timesheet.all
  end

  def new
  	@timesheet = Timesheet.new
  end

  def create
  	@timesheet = Timesheet.new(timesheet_params)
  	@timesheet.save
  	redirect_to user_projects_path
  end

  

  private
  	def timesheet_params
  		params.require(:timesheet).permit(:avatar, :project_id, :user_id)
  	end
end
