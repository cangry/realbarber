class HaircutPhoto < ActiveRecord::Base
	belongs_to :haircut
	has_one :barber, :through => :haircut

	has_attached_file :name, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"	
end