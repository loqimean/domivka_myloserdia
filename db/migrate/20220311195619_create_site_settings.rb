class CreateSiteSettings < ActiveRecord::Migration[7.0]
  def change
    create_table :site_settings do |t|
      t.text :uk_idea_of_project
      t.text :en_idea_of_project
      t.string :main_photo
      t.text :uk_address
      t.text :en_address
      t.text :uk_payment_details
      t.text :en_payment_details
      t.string :email
      t.string :facebook_url
      t.string :instagram_url
      t.string :telegram_url

      t.timestamps
    end
  end
end
