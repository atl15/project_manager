class Projects::StatusChangesController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
  end

  def create
    project = Project.find(params[:project_id])
    project.update!(status: params[:status])
    redirect_to project_path(project)
  end
end
