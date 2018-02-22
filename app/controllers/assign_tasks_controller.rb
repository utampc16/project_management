class AssignTasksController < ApplicationController
    def index
    	@assign_task = AssignTask.all
    end

    def new
    	debugger
    	@user_project = UserProject.new
    	#@assign_task = @user_project.assign_task.find(params[:id])
    end

    def create
    end
    	
    

	private
	def assign_task_params
		params.require(:assign_task).permit(:project_id, :user_id, :task_id)
	end
end
