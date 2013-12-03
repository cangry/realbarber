class AddNameColumnsToHaircutPhoto < ActiveRecord::Migration 
 	def self.up
    add_attachment :haircut_photos, :name
  end

  def self.down
    remove_attachment :haircut_photos, :name
  end
end
