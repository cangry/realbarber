class BarberType < ActiveRecord::Base
	belongs_to :barber
	belongs_to :type
end
