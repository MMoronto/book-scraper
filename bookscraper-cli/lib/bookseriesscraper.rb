class BookseriesScraper

    attr_accessor :bookseries, :doc

    def initialize(series_number)
        @bookseries = Bookseries.new
        @bookseries.series_number = series_number
        @doc = Nokogiri::HTML(open("https://www.goodreads.com/series/#{series_number}"))
    end 

    def scrape
        scrape_details
        @bookseries #=> This instance should have a listing of books and details
    end

    def scrape_details
        # populate @bookseries with more data from the bookseries site
        release_date = @doc.search("gr-metaText.u-inlineBlock").text.text.gsub("series #{@number}")
    end 
end
