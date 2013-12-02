class CreateHaircutTags < ActiveRecord::Migration
  def change
    create_table :haircut_tags do |t|
      t.integer :haircut_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
