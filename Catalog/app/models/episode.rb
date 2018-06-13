class Episode < ApplicationRecord
  has_many :seasons
  has_many :series, through: :seasons
end
