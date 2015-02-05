class Url < ActiveRecord::Base
	validates :url, presence: true
	validates :short_url, presence: true
end
