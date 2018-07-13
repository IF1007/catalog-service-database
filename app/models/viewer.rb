class Viewer < ApplicationRecord
  STATUS_OPTIONS = %w(watching watch_later watched)

  belongs_to :serie
  belongs_to :profile

  has_many :progresses
  has_many :episodes, through: :progresses

  validates :status, :inclusion => {:in => STATUS_OPTIONS}
end
