class Evaluation < ApplicationRecord
  belongs_to :serie
  
  validates :comment, :user_id, presence: true
end
