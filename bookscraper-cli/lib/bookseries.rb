class InvalidType < StandardError; end

class Bookseries
    attr_accessor :series_number, :boxset_price
    # attr_reader :books

    def initialize
        @books = []
    end

    def books
        @books.dup.freeze!
    end

    def add_books(book)
        if !book.is_a?(Book)
            raise InvalidType, "must be a Book" 
        else
            @books << book
        end
    end

    
end
