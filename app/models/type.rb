class Type < ActiveRecord::Base
	has_many :barber_types
	has_many :barbers, :through => :barber_types
end
