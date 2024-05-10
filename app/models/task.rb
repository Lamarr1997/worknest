class Task < ApplicationRecord
  CATEGORIES = {
    "gardening" => '<i class="fa-solid fa-tree"></i>',
    "handyman" => '<i class="fa-solid fa-hammer"></i>',
    "cleaning" => '<i class="fa-solid fa-broom"></i>',
    "other" => '<i class="fa-solid fa-clipboard-question"></i>'
  }
  belongs_to :user
  has_one_attached :photo
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  belongs_to :user
  has_one_attached :photo
  validates :title, presence: true, uniqueness: true
  validates :location, :price, :description, presence: true

  include PgSearch::Model

  pg_search_scope :task_search,
  against: [ :title, :description, :location ],
  using: {
    tsearch: { prefix: true }
  }
end
