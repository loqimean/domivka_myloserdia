class CreateActivityPhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :activity_photos do |t|
      t.string :photo

      t.timestamps
    end
  end
end
