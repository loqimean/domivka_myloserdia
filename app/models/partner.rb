class Partner < ApplicationRecord
    mount_uploader :logo, PartnerUploader

    scope :ordered, -> { order(position: :desc) }

    validates :logo, :position, presence: true
end
