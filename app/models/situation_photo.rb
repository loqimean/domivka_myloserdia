class SituationPhoto < ApplicationRecord
    mount_uploader :photo, SituationPhotoUploader

    validates :photo, presence: true
    
    scope :ordered, -> { order(:created_at) }
end
