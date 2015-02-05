class UrlsController < ApplicationController
	def index
		@url = Url.order("created_at")
	end
	def show
    	@url = Url.find(params[:urls_id])
    	@url.count += 1
    	@url.save
    	redirect_to @url.url
	end
	def new
		@url = Url.new
	end
	def create
		@url = Url.new entry_params
		if @url.save
			redirect_to action: 'index', controller: 'urls'
		else
			render 'new'
		end
	end
	private
	def entry_params
		params.require(:url).permit(:url, :short_url)
	end
end
