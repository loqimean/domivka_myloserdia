require 'rails_helper'

RSpec.describe "account/situation_photos/new", type: :view do
  before(:each) do
    assign(:account_situation_photo, SituationPhoto.new())
  end

  it "renders new account_situation_photo form" do
    render

    assert_select "form[action=?][method=?]", account_situation_photos_path, "post" do
    end
  end
end
