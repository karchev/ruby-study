require 'csv'
require_relative 'book_in_stock'

class CsvReader
    def initialize
        @books_in_stock = []
    end
    
    def read_in_csv_data(csv_file_name) # read a csv file
        CSV.foreach(csv_file_name, headers: true) do |row| # every(use each) csv file's data = |row|
            @books_in_stock << BookInStock.new(row["ISBN"], row["Price"]) # insert data |row| to @books_in_stock
        end
    end
    
    def total_value_in_stock
        sum = 0.0 # price's sum
        @books_in_stock.each{|book| sum += book.price} # array @Books_is_stock's value = |book|
        sum # return sum
    end
    
    def number_of_each_isbn
    end
end