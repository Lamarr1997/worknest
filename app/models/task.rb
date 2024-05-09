class Task < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  include PgSearch::Model

  pg_search_scope :task_search,
  against: [ :title, :description ],
  using: {
    tsearch: { prefix: true }
  }
end
