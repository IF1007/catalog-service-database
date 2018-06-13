class Attachment < ApplicationRecord
  belongs_to :attachable, polymorphic: true
  dragonfly_accessor :file
end
