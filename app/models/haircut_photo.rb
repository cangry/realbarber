class HaircutPhoto < ActiveRecord::Base
	belongs_to :haircut
	has_one :barber, :through => :haircut

	has_attached_file :name, :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
	:url => "/assets/haircuts/:id/:style/:filename",
  :path => ":rails_root/public/assets/haircuts/:id/:style/:filename"
  validates_attachment_content_type :name, :content_type => /image/
end