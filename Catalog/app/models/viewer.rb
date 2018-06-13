class Viewer < ApplicationRecord
  belongs_to :serie
  # status = watching, watch_later, watched

  has_many :progresses
  has_many :episodes, through: :progresses
end
