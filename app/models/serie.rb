class Serie < ApplicationRecord 
  has_many :evaluations
  has_many :seasons
  has_many :attachments, as: :attachable
  has_many :viewers

  validates :title, presence: true

  def episodes_count
    count = 0
    self.seasons.each do |season|
      count += season.episodes.count
    end
    count
  end
end
