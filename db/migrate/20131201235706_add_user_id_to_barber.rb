class AddUserIdToBarber < ActiveRecord::Migration
  def change
    add_column :barbers, :user_id, :integer
  end
end
