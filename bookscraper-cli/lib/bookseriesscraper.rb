class BookseriesScraper

    attr_accessor :bookseries, :doc

    def initialize(series_number)
        @bookseries = Bookseries.new
        @bookseries.series_number = series_number
        @doc = Nokogiri::HTML(open("https://www.goodreads.com/series/281756-the-expanse-chronological/#{series_number}"))
    end 
end
