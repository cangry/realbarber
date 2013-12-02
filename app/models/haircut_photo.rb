class HaircutPhoto < ActiveRecord::Base
	belongs_to :haircut
	has_one :barber, :through => :haircut
end
