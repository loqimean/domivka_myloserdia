class SiteSetting < ApplicationRecord
  mount_uploader :main_photo, SiteSettingsUploader

  validates :uk_idea_of_project, :en_idea_of_project, length: { minimum: 50, maximum: 470 }

  validates :main_photo, :uk_idea_of_project, :en_idea_of_project, presence: true
end
