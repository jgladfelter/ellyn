class Activity < ActiveRecord::Base
	belongs_to :org
	has_many :events
	geocoded_by :full_address
	after_validation :geocode

	def full_address
		address = self.org.street + "," + self.org.zip.to_s
	end
end
