class Serie < ApplicationRecord
  has_many :attachments, as: :attachable
end
