require 'rails_helper'

RSpec.describe SituationPhoto, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:photo) }
  end
end
