class Org < ActiveRecord::Base
	has_many :activities
	has_many :events, :through => :activities
end
