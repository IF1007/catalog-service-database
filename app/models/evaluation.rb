class Evaluation < ApplicationRecord
  belongs_to :serie
  belongs_to :profile
  
  validates :comment, presence: true
end
