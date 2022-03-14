class Partner < ApplicationRecord
    scope :ordered, -> { order(:created_at) }

    validates :logo, :position, presence: true
end
