class User < ActiveRecord::Base
  # Virtual attribute for authenticating by either username or email
	# This is in addition to a real persisted field like 'username'
	attr_accessor :login
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :barber
  has_one :customer
  has_many :likes
  has_many :haircuts, :through => :likes

  accepts_nested_attributes_for :barber

  validates :username,
  :uniqueness => {
    :case_sensitive => false
  }

  def self.find_first_by_auth_conditions(warden_conditions)
  	conditions = warden_conditions.dup
  	if login = conditions.delete(:login)
  		where(conditions).where(["username = :value OR lower(email) = lower(:value)",{ :value => login }]).first
    else
      where(conditions).first
    end
   end

   has_attached_file :avatar, :styles => { :medium => "300", :thumb => "30x30" },
    :url => "/assets/user/avatar/:id/:style/:filename",
    :path => ":rails_root/public/assets/user/avatar/:id/:style/:filename"
    validates_attachment_content_type :avatar, :content_type => /image/

end
