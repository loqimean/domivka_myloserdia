require 'rails_helper'

RSpec.describe "account/situation_photos/index", type: :view do
  before(:each) do
    assign(:situation_photos, [
      SituationPhoto.create!(),
      SituationPhoto.create!()
    ])
  end

  it "renders a list of account/situation_photos" do
    render
  end
end
