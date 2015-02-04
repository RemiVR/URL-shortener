class UrlsController < ApplicationController
	def show
    	@url = Url.find(params[:urls_id])
    	redirect_to @url.url
	end
	def new
		@url = Url.new
	end
	def create
		@url = Url.new
		if @entry.save
			redirect_to action: 'show', controller: 'erls'
		else
			render 'new'
		end
	end
end
