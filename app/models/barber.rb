class Barber < ActiveRecord::Base
	belongs_to :user
	has_many :barber_types
	has_many :types, :through => :barber_types
	has_many :haircuts
end
