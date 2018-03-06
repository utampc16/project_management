class MeetingsController < ApplicationController
  def index
  	@meeting = Meeting.all
  end

  def new
  	@meeting = Meeting.new
  end

  def create
  	@meeting = Meeting.new(meeting_params)
  	debugger
  	@meeting.save
  	redirect_to meetings_path
  end

  def destroy
  	@meeting = Meeting.find(params[:id])
  	@meeting.destroy
  	redirect_to meetings_path
  end


  private
  	def meeting_params
  		params.require(:meeting).permit(:purpose, :date, :time)
  	end
end
