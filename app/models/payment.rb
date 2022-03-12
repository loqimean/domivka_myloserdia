class Payment < ApplicationRecord
    mount_uploader :sum, PaymentUploader, presence: true
    mount_uploader :name, PaymentUploader, presence: true

    scope :ordered, -> { order(:created_at) }
end
