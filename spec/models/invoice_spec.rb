require 'rails_helper'

RSpec.describe Invoice, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:file) }
  end
end
