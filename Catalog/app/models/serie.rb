class Serie < ApplicationRecord 
  has_many :evaluations
  has_many :seasons
  has_many :episodes, through: :seasons
  has_many :attachments, as: :attachable
  has_many :viewers
end
