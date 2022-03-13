require 'rails_helper'

RSpec.describe "account/situation_photos/edit", type: :view do
  before(:each) do
    @account_situation_photo = assign(:account_situation_photo, SituationPhoto.create!())
  end

  it "renders the edit account_situation_photo form" do
    render

    assert_select "form[action=?][method=?]", account_situation_photo_path(@account_situation_photo), "post" do
    end
  end
end
