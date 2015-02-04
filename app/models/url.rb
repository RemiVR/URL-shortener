class Url < ActiveRecord::Base
	def self.last_created_links
		order("created_at DESC").limit(10)
	end
end
