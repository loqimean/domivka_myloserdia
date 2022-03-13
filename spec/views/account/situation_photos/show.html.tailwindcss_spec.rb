require 'rails_helper'

RSpec.describe "account/situation_photos/show", type: :view do
  before(:each) do
    @account_situation_photo = assign(:account_situation_photo, SituationPhoto.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
