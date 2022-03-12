class ActivityPhoto < ApplicationRecord
    mount_uploader :photo, ActivityPhotoUploader
    
    scope :ordered, -> { order(:created_at) }
end
