class AssignTasksController < ApplicationController
    def index
    	@user = User.find(params[:user_id])
    	@project = Project.find(params[:project_id])
    	# @task = Task.find(params[:format])
    	@assign_tasks = AssignTask.where(project_id: @project.id, user_id: @user.id)
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
    	redirect_to assign_tasks_path(project_id: @assign_task.project.id, user_id: @assign_task.user.id)
    end
    	

   def destroy
  	@assign_task = AssignTask.find(params[:id])
    @assign_task.destroy
  	redirect_to assign_tasks_path(project_id: @assign_task.project.id, user_id: @assign_task.user.id)
 
  end
    

	private
	def assign_task_params
		params.require(:Assign_task).permit(:task_id, :user_id, :project_id)
	end
end
