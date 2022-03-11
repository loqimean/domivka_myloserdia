class SituationPhoto < ApplicationRecord
    mount_uploader :photo, SituationPhotoUploader
    
    scope :ordered, -> { order(:created_at) }
end
