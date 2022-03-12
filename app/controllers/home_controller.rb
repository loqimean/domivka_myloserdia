class HomeController < ApplicationController
  def index
    @situation_photos = SituationPhoto.ordered.limit(10)
    @site_settings = SiteSetting.first
  end

  def redirection
    redirect_to root_url
  end
end
