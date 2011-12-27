class Place < ActiveRecord::Base

	belongs_to :user
	has_one :preference
	has_many :histories, :dependent => :destroy

end
