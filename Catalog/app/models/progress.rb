class Progress < ApplicationRecord
  belongs_to :episode
  belongs_to :viewer

  validates :user_id, presence: true
end
