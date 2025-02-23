module ProjectHelper
  def project_statuses
    Project.statuses.map do |status, _value|
      [t(status, scope: "activerecord.attributes.project.statuses"), status]
    end
  end
end
