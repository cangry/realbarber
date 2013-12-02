class Barber < ActiveRecord::Base
	belongs_to :user
	has_many :barber_types
	has_many :haircut_types, :through => :barber_types
	has_many :haircuts
	has_many :haircut_photos, :through => :haircuts

end
