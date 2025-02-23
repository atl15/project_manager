class Project < ApplicationRecord
  enum :status, to_do: 0, in_progress: 1, blocked: 2, done: 3

  validates :name, :text, :status, presence: true

  def to_s
    name
  end
end
