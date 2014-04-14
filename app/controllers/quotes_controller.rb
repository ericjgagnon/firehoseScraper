class QuotesController < ApplicationController
	
	def index
		@quote = QuoteScraper.scrape
	end
end
