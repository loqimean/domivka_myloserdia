class CreateSiteSettings < ActiveRecord::Migration[7.0]
  def change
    create_table :site_settings do |t|
      t.text :idea_of_project
      t.string :main_photo
      t.text :adress
      t.string :payment_details
      t.string :email
      t.string :facebook
      t.string :instagram
      t.string :telegram

      t.timestamps
    end
  end
end
