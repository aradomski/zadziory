class History < ActiveRecord::Base

	belongs_to :user
	belongs_to :place
	#walidacja czy liczba - nie potrzebne jak bedzie slider
	#validates :rate_owner, :numericality => true

end
