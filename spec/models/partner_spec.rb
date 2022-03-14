require 'rails_helper'

RSpec.describe Partner, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:logo) }
    it { is_expected.to validate_presence_of(:position) }
  end 
end
