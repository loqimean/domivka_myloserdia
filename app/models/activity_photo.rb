class ActivityPhoto < ApplicationRecord
    mount_uploader :photo, ActivityPhotoUploader, presence: true
    
    scope :ordered, -> { order(:created_at) }
end
