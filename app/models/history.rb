class History < ActiveRecord::Base

	belongs_to :user
	belongs_to :place
	#OWNER#
	validates :rate_owner, :numericality => true
	validates_numericality_of :rate_owner, :less_than_or_equal_to  => 10
	validates_numericality_of :rate_owner, :greater_than_or_equal_to   => 0
	
	#ITEM#
	validates :rate_item, :numericality => true
	validates_numericality_of :rate_item, :less_than_or_equal_to  => 10
	validates_numericality_of :rate_item, :greater_than_or_equal_to   => 0
	
	#TENANT#
	validates :rate_tenant, :numericality => true
	validates_numericality_of :rate_tenant, :less_than_or_equal_to  => 10
	validates_numericality_of :rate_tenant, :greater_than_or_equal_to   => 0
end
