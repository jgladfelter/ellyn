class Activity < ActiveRecord::Base
	belongs_to :org
	has_many :events
end
