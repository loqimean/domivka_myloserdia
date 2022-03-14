class Partner < ApplicationRecord
    mount_uploader :logo, PartnerUploader

    scope :ordered, -> { order(:created_at) }

    validates :logo, :position, presence: true
end
