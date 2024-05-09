class Task < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model

  pg_search_scope :task_search,
  against: [ :title, :description, :location ],
  using: {
    tsearch: { prefix: true }
  }
end
