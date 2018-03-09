class UserProjectsController < ApplicationController
	def index
		@user_project = UserProject.all
	end

	def new
    @user_project = UserProject.new
	end

	def create
        @user_project = UserProject.new(user_project_params)
        if UserProject.where(project_id: params[:user_project][:project_id], user_id: params[:user_project][:user_id]).first.present?
          flash[:notice] = "Already Assigned!"
          redirect_to user_projects_path
        else
	        @user_project.save
	        redirect_to user_projects_path
	      end
	end

	def show
		@user_project = UserProject.find(params[:id])
	end

	def edit
		@user_project = UserProject.find(params[:id])
	end

	def update
		@user_project = UserProject.find(params[:id])

		if @user_project.update(user_project_params)
          redirect_to @user_project
        else
          render 'edit'
        end
    end

	def destroy
	  @user_project = UserProject.find(params[:id])
      @user_project.destroy
 
      redirect_to user_projects_path
	end

	def timesheets
	  @timesheet = Timesheet.where(project_id: params[:id], user_id: params[:user_id])
	end

	def complete
		debugger
		@timesheet = Timesheet.find(params[:id])
		@timesheet.completed = true
		@timesheet.save
		redirect_to user_projects_path
	end

	private
	def user_project_params
		params.require(:user_project).permit(:user_id, :project_id)
	end
end
