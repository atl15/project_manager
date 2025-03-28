class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @entries = @project.entries.includes(:user, :entryable).order(created_at: :asc)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to projects_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def project_params
    params.expect(project: %i[name text status])
  end
end
