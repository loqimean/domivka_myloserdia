class SiteSetting < ApplicationRecord
  mount_uploader :main_photo, SiteSettingsUploader

  validates :uk_idea_of_project, :en_idea_of_project, length: { minimum: 50 }
  validates :main_photo, :uk_idea_of_project, :en_idea_of_project, presence: true

  has_rich_text :uk_payment_details
  has_rich_text :en_payment_details
  has_rich_text :uk_address
  has_rich_text :en_address
end
