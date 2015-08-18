class Activity < ActiveRecord::Base
	belongs_to :org
	has_many :events

	def full_address
		address = self.org.street + "," + self.org.zip
	end
end
