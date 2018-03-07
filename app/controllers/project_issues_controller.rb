class ProjectIssuesController < ApplicationController
  def index
  	@project = Project.find(params[:project_id])
  	@project_issue = Issue.all
  end

  def create
  	@project_issue = Issue.new(project_issue_params)
  	@project_issue.save
  	redirect_to project_project_issues_path
  end

  def destroy
  	@project_issue = Issue.find(params[:id])
  	@project_issue.destroy
  	redirect_to project_project_issues_path
  end

  private
  	def project_issue_params
  		params.require(:issue).permit(:Issue, :project_id)
  	end
end
