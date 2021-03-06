class MeetingsController < ApplicationController
  def index
  	@meeting = Meeting.all
  end

  def new
  	@meeting = Meeting.new
  end

  def create
  	@meeting = Meeting.new(meeting_params)
  	@meeting.save
  	redirect_to meetings_path
  end

  def show
  	@meeting = Meeting.find(params[:id])
  end

  def edit
  	@meeting = Meeting.find(params[:id])
  end

  def update
  	@meeting = Meeting.find(params[:id])
  	debugger
  	@meeting.update(meeting_params)
  	redirect_to meetings_path
  end

  def destroy
  	@meeting = Meeting.find(params[:id])
  	@meeting.destroy
  	redirect_to meetings_path
  end


  private
  	def meeting_params
  		params.require(:meeting).permit(:purpose, :date, :time, :avatar)
  	end
end
