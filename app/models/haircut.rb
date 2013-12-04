class Haircut < ActiveRecord::Base
	belongs_to :barber
	has_many :haircut_photos
	has_many :haircut_tags
	has_many :tags, :through => :haircut_tags
	has_many :likes
	has_many :users, :through => :likes

	accepts_nested_attributes_for :haircut_photos
end
