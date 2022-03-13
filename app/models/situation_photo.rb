class SituationPhoto < ApplicationRecord
    mount_uploader :photo, SituationPhotoUploader
    
    scope :ordered, -> { order(:created_at) }
    
    validates :photo, presence: true
end
