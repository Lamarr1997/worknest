class Task < ApplicationRecord
  belongs_to :user

  include PgSearch::Model

  pg_search_scope :task_search,
  against: [ :title, :synopsis ],
  using: {
    tsearch: { prefix: true }
  }
end
