class Profile < ApplicationRecord
  # Include default devise modules.
  # devise :database_authenticatable, :registerable,
  #         :recoverable, :rememberable, :trackable, :validatable,
  #         :confirmable, :omniauthable
  
  devise :database_authenticatable
  include DeviseTokenAuth::Concerns::User

  has_many :attachments, as: :attachable
  has_many :viewers
  has_many :evaluations

  validates :user_id, presence: true, uniqueness: true
  validates :name, presence: true
end
