class Tag < ActiveRecord::Base
	has_many :haircut_tags
	has_many :haircuts, :through => :haircut_tags
end
