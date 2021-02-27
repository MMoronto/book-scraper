class Bookseries
    attr_accessor :books, :series_number, :release_date

    def first_book_url
        
        self.books.first.url
    end
    
end 