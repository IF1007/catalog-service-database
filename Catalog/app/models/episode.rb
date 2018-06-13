class Episode < ApplicationRecord
  belongs_to :serie
  has_many :progresses
  has_many :viewers, through: :progresses

  validates :episode_number, presence: true
end
