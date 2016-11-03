require_relative 'words_from_string'
require_relative 'count_frequency'

counts = count_frequency(words_from_string(gets))
sorted = counts.sort_by {|word, count| count}
top_five = sorted.last(5)

top_five.each {|word, count| puts "#{word} : #{count}" }