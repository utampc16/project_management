class TimesheetsController < ApplicationController
  def index
  	#@project = Project.find(params[:project_id])
  	@timesheet = Timesheet.all
  end

  def new
  	@timesheet = Timesheet.new
  end

  def create
  	debugger
  	@timesheet = Timesheet.new(timesheet_params)
  	@timesheet.save
  	redirect_to @timesheet
  end

  def show
  	debugger
  	@timesheet = Timesheet.find(params[:id])
  	# @timesheet = Timesheet.all
  end

  private
  	def timesheet_params
  		params.require(:timesheet).permit(:avatar, :project_id, :user_id)
  	end
end
