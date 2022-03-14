class Payment < ApplicationRecord
    scope :ordered, -> { order(:created_at) }

    validates :sum, :name, presence: true

  def self.total_collected
    total = 0
    self.pluck(:sum).each { |sum| total += sum.to_f }

    total
  end
end
