class BookInStock
    attr_reader     :isbn
    attr_accessor   :price
    
    def initialize(isbn, price)
        @isbn   = isbn
        @price  = Float(price)
    end
    
    def price_in_cents
        Integer(price*100 + 0.5)
    end
end


b1 = BookInStock.new("isbn1", 3)
puts "b1 ISBN  = #{b1.isbn}"
puts "b1 Price = #{b1.price}"
b1.price = b1.price * 0.75
puts "b1 New Price = #{b1.price}"
puts "b1 Price in cents = #{b1.price_in_cents}"

b2 = BookInStock.new("isbn2", 3.14)
puts "b2 ISBN  = #{b2.isbn}"
puts "b2 Price = #{b2.price}"

b3 = BookInStock.new("isbn3", "5.67")
puts "b3 ISBN  = #{b3.isbn}"
puts "b3 Price = #{b3.price}"

