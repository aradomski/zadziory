class Place < ActiveRecord::Base

	belongs_to :user
	has_one :preference
	has_many :histories, :dependent => :destroy
  has_many :images, :dependent => :destroy
  accepts_nested_attributes_for :images

	scope :inactive, where(:is_active => false)
	scope :active, where(:is_active => true)

end
