class Place < ActiveRecord::Base

	belongs_to :user
	has_one :preference
	has_many :histories, :dependent => :destroy
  has_many :images, :dependent => :destroy
  accepts_nested_attributes_for :images, :allow_destroy => true


	scope :inactive, where(:is_active => false)
	scope :active, where(:is_active => true)

	#PRICE_MIN#
	validates :price_min, :numericality => true
	validates_numericality_of :price_min, :less_than_or_equal_to  => :price_max
	validates_numericality_of :price_min, :greater_than_or_equal_to   => 0

	#PRICE_MAX#
	validates :price_max, :numericality => true
	#validates_numericality_of :price_min, :less_than_or_equal_to  =>  9000
	validates_numericality_of :price_max, :greater_than_or_equal_to   => 0

end
