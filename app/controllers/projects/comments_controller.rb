class Projects::CommentsController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @comment = Comment.new
  end

  def create
    @project = Project.find(params[:project_id])
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to project_path(@project)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.expect(comment: %i[text])
  end
end
