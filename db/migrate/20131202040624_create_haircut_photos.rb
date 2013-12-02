class CreateHaircutPhotos < ActiveRecord::Migration
  def change
    create_table :haircut_photos do |t|
      t.integer :haircut_id
      t.string :url

      t.timestamps
    end
  end
end
