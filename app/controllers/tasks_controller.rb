class TasksController < ApplicationController
	def index
		@task = Task.all
	end

	def new
		@task = Task.new
	end

	def create
    @project = Project.find(params[:project_id])
    @task = @project.tasks.create(task_params)
    redirect_to project_path(@project)
  end

	private
	def task_params
		params.require(:task).permit(:task_name)
	end
end
