class Profile < ApplicationRecord
  has_many :attachments, as: :attachable
  validates :user_id, presence: true, uniqueness: true
end
