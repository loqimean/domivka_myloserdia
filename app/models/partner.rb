class Partner < ApplicationRecord
    mount_uploader :logo, :position, ActivityPhotoUploader

    scope :ordered, -> { order(:created_at) }

    validates :logo, :position, presence: true
end
