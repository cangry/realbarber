class CreateHaircutPictures < ActiveRecord::Migration
  def change
    create_table :haircut_pictures do |t|
      t.integer :haircut_id
      t.text :url

      t.timestamps
    end
  end
end
