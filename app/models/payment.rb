class Payment < ApplicationRecord
    scope :ordered, -> { order(:created_at) }
    
    validates :sum, :name, presence: true
end
