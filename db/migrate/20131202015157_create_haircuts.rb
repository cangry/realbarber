class CreateHaircuts < ActiveRecord::Migration
  def change
    create_table :haircuts do |t|
      t.integer :barber_id
      t.string :title
      t.integer :view_count
      t.integer :like_count

      t.timestamps
    end
  end
end
