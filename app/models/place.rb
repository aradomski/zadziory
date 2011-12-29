class Place < ActiveRecord::Base

	belongs_to :user
	has_one :preference
	has_many :histories, :dependent => :destroy

	scope :inactive, where(:is_active => false)
	scope :active, where(:is_active => true)

end
