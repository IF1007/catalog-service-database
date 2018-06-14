class Serie < ApplicationRecord 
  has_many :evaluations
  has_many :seasons
  has_many :attachments, as: :attachable
  has_many :viewers

  validates :title, presence: true
end
