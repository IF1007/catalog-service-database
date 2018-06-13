class Serie < ApplicationRecord  
  has_many :seasons
  has_many :episodes, through: :seasons
  has_many :attachments, as: :attachable
end
