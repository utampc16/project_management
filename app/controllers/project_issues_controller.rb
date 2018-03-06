class ProjectIssuesController < ApplicationController
  def index
  	@project = Project.find(params[:project_id])
  	@project_issue = Issue.all
  end

  def create
  	@issue = Issue.new(issue_params)
  	@issue.save
  	redirect_to project_project_issues_path
  end

  private
  	def issue_params
  		params.require(:issue).permit(:issue)
  	end
end
