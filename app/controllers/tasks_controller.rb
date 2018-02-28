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


  def destroy
    @project = Project.find(params[:project_id])
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to project_path(@project)
  end

  def complete
		@task = current_user.tasks.find(params[:id])
		@task.completed = true
		@task.save
		redirect_to tasks_path
	end

	private
	def task_params
		params.require(:task).permit(:task_name)
	end
end
