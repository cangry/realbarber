class CreateHaircutTypes < ActiveRecord::Migration
  def change
    create_table :haircut_types do |t|
      t.string :title

      t.timestamps
    end
  end
end
