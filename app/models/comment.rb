class Comment < ApplicationRecord
  include Entryable

  validates :text, presence: true

  def to_s
    text
  end
end
