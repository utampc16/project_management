class TimesheetsController < ApplicationController
  def index
  	#@project = Project.find(params[:project_id])
  	@timesheet = Timesheet.all
  end

  def new
  	@timesheet = Timesheet.new
  end

  def create
  	@timesheet = Timesheet.new(timesheet_params)
  	@timesheet.save
  	redirect_to @timesheet
  end

  def show
  	@timesheet = Timesheet.find(params[:id])
  	# @timesheet = Timesheet.all
  end

  def projects
  	@timesheet = Timesheet.where(project_id: params[:id], user_id: params[:user_id])
  end

  private
  	def timesheet_params
  		params.require(:timesheet).permit(:avatar, :project_id, :user_id)
  	end
end
