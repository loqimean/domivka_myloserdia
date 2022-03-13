require "rails_helper"

RSpec.describe Account::SituationPhotosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/account/situation_photos").to route_to("account/situation_photos#index")
    end

    it "routes to #new" do
      expect(get: "/account/situation_photos/new").to route_to("account/situation_photos#new")
    end

    it "routes to #show" do
      expect(get: "/account/situation_photos/1").to route_to("account/situation_photos#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/account/situation_photos/1/edit").to route_to("account/situation_photos#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/account/situation_photos").to route_to("account/situation_photos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/account/situation_photos/1").to route_to("account/situation_photos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/account/situation_photos/1").to route_to("account/situation_photos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/account/situation_photos/1").to route_to("account/situation_photos#destroy", id: "1")
    end
  end
end
