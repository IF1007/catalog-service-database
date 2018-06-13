class Profile < ApplicationRecord
  has_many :attachments, as: :attachable
end
