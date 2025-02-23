class Projects::StatusChangesController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
  end

  def create
    project = Project.find(params[:project_id])

    ProjectStatusChange::Creator.new(
      status: params[:status],
      project: project,
      user: current_user
    ).perform
    redirect_to project_path(project)
  end
end
