class CreatePartners < ActiveRecord::Migration[7.0]
  def change
    create_table :partners do |t|
      t.string :logo, null: false
      t.string :web_site_url
      t.bigint :position, default: 0

      t.timestamps
    end
  end
end
