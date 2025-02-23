module ProjectHelper
  def project_statuses
    Project.statuses.map do |status, _value|
      [t(status, scope: "activerecord.attributes.project.statuses"), status]
    end
  end

  def project_status_badge(project)
    {
      to_do: "text-bg-secondary",
      in_progress: "text-bg-primary",
      blocked: "text-bg-danger",
      done: "text-bg-success"
    }.fetch(project.status.to_sym)
  end
end
