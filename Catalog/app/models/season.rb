class Season < ApplicationRecord
  belongs_to :serie
  has_many :episodes
  validates :season_number, :title, presence: true
end
