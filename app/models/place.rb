class Place < ActiveRecord::Base

	belongs_to :user
	has_one :preference
	has_many :histories, :dependent => :destroy
	has_many :images, :dependent => :destroy
	accepts_nested_attributes_for :images

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

	#BUILD_YEAR#
	validates :build_year, :numericality => true
	validates_numericality_of :build_year, :less_than_or_equal_to  =>  2012
	
	#availability_from#
	validates_date :availability_from, :on_or_after => Date.current, :on_or_after_message => "Z\u{0142}a data"
	
	#Availability_to#
	validates_date :availability_to, :on_or_after => :availability_from, :on_or_after_message => "Z\u{0142}a data"
	
end
