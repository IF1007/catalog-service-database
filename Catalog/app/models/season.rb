class Season < ApplicationRecord
  belongs_to :episode
  belongs_to :serie
end
