class AddColumnPhoneToSiteSettings < ActiveRecord::Migration[7.0]
  def change
    add_column :site_settings, :phone, :string
  end
end
