require 'open-uri'

class Scraper
    
    def self.scrape_book_series(series_url)
        book_series = Nokogiri::HTML(open(series_url))
        series = []

    end

    def self.scrape_book_info(book_synopsis)
        movie = {}
        synopsis_page = Nokogiri::HTML(open(book_synopsis))

    end
end