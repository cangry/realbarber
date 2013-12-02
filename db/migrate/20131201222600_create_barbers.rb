class CreateBarbers < ActiveRecord::Migration
  def change
    create_table :barbers do |t|
      t.string :name
      t.text :bio
      t.string :address1
      t.string :address2
      t.string :zip
      t.string :city
      t.string :state
      t.string :country
      t.text :avatar_url
      t.text :status
      t.timestamps
    end
  end
end
