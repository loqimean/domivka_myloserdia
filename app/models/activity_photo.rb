class ActivityPhoto < ApplicationRecord
    mount_uploader :photo, ActivityPhotoUploader

    validates :photo, presence: true
    
    scope :ordered, -> { order(:created_at) }
end
