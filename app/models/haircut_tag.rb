class HaircutTag < ActiveRecord::Base
	belongs_to :haircut
	belongs_to :tag
end
