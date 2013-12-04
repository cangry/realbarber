class AddBarberToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_barber, :boolean
  end
end
