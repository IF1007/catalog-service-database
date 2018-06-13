class Viewer < ApplicationRecord
  STATUS_OPTIONS = %w(watching watch_later watched)

  belongs_to :serie
  has_many :progresses
  has_many :episodes, through: :progresses

  validates :status, :inclusion => {:in => STATUS_OPTIONS}
  validates :user_id, presence: true
end
