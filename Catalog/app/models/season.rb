class Season < ApplicationRecord
  belongs_to :episode
  belongs_to :serie
  validates :season_number, presence: true
end
