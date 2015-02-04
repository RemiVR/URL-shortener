class LinksController < ApplicationController
	def index
		@links = Url.limit(10)
	end
end
