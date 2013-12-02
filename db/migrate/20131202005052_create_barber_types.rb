class CreateBarberTypes < ActiveRecord::Migration
  def change
    create_table :barber_types do |t|
      t.integer :barber_id
      t.integer :haircut_type_id

      t.timestamps
    end
  end
end
