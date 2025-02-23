class ProjectStatusChange::Creator
  include ActiveModel::Model

  attr_accessor :project, :user, :status

  def perform
    project.transaction do
      project_status = ProjectStatusChange.new(from: project.status, to: status)
      Entry.create!(project: project, user: user, entryable: project_status)
      project.update!(status: status)
    end
  end
end
