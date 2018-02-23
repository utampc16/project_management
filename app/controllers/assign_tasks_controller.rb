class AssignTasksController < ApplicationController
    def index
    	@user = User.find(params[:user_id])
    	@project = Project.find(params[:project_id])
    	@task = Task.find(params[:format])
    	@assign_task = AssignTask.all
    end

    def new
    	@user = User.find(params[:user_id])
    	@project = Project.find(params[:project_id])
    	@assign_task = AssignTask.new
    	#@assign_task = @user_project.assign_task.find(params[:id])
    end

    def create
    	@assign_task = AssignTask.new(assign_task_params)
    	@assign_task.save
    	redirect_to user_project_assign_tasks_path(params[:Assign_task][:user_id], params[:Assign_task][:project_id], params[:Assign_task][:task_id]) 
    end
    	
    

	private
	def assign_task_params
		params.require(:Assign_task).permit(:task_id, :user_id, :project_id)
	end
end
