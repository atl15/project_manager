class Entry < ApplicationRecord
  belongs_to :project
  belongs_to :user

  delegated_type :entryable, types: %w[Comment ProjectStatusChange]

  broadcasts_to ->(entry) { [entry.project, "entries"] }, inserts_by: :append, partial: "projects/entry"
end
