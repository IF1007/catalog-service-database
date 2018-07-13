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

  validates :name, presence: true
  validates :password, presence: true, length: { in: 6..20 }, on: :create
  validates_uniqueness_of :email, case_sensitive: false
end
