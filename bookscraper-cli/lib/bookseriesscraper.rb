class BookseriesScraper

    attr_accessor :bookseries, :doc

    def initialize(series_number)
        @bookseries = Bookseries.new
        @bookseries.series_number = series_number
        @doc = Nokogiri::HTML(open("https://www.penguinrandomhouse.com/the-read-down/series/#{series_number}"))
    end 

    def scrape
        scrape_details
        @bookseries #=> This instance should have a listing of book series and details
    end

    def scrape_details
        # populate @bookseries with more data from the bookseries site
        @bookseries.boxset_price = @doc.search("div.buy-price").text.gsub("series #{@series_number} - ", "").strip
    end

    # def scrape_books
    #     # I would break the convention of only knowing about the Bookseries and let it create books
    #     @doc.search("listWithDividers").each do |book_table|
    #         # instantiate the book
    #         b = Book.new
    #         # scrape the data
    #         binding.pry
    #         # add the book to the bookseries
    # end
end
