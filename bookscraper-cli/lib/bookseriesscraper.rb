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
        @bookseries.release_date = @doc.search("gr-metaText.u-inlineBlock").text.gsub("series #{@series_number} - ", "").strip
    end

    def scrape_books
        # I would break the convention of only knowing about the Bookseries and let it create books
        @doc.search("").each do |book_table|
            # instantiate the book
            # scrape the data
            # add the book to the bookseries
            
    end
end
