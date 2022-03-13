class Invoice < ApplicationRecord
    scope :ordered, -> { order(:created_at) }
    
    validates :file, presence: true
end
