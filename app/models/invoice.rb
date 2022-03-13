class Invoice < ApplicationRecord
    mount_uploader :file, InvoiceUploader

    scope :ordered, -> { order(:created_at) }

    validates :file, presence: true
end
