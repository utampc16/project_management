class TimesheetsController < ApplicationController
  def index
  end

  def new
  	@timesheet = Timesheet.new
  end

  def create
  	@timesheet = Timesheet.new(timesheet_params)
  	@timesheet.save
  	redirect_to timesheets_path
  end

  private
  	def timesheet_params
  		params.require(:timesheet).permit(:avatar)
  	end
end
