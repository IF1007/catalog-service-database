class Episode < ApplicationRecord
  belongs_to :season
  has_many :progresses
  has_many :viewers, through: :progresses

  validates :episode_number, :title, presence: true
end
