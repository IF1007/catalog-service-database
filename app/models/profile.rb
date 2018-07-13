class Profile < ApplicationRecord
  has_many :attachments, as: :attachable
  validates :user_id, presence: true, uniqueness: true
  validates :name, presence: true
end
