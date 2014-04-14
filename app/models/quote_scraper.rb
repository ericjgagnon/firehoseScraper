#app/models/quote_scraper.rb
class QuoteScraper
	def self.scrape
		response = HTTParty.get('http://www.brainyquote.com/quotes/authors/l/leonardo_da_vinci.html')
		doc = Nokogiri::HTML(response.body)

		# Do funky things with it using Nokogiri::XML::Node methods...

		####
		# Search for nodes by css

		quotes = []
		doc.css('.bqQuoteLink a').each do |quote|
			quotes << quote.inner_html
		end

		quotes.sample
	end
end