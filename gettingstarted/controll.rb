
today = Time.now;

if today.saturday?
    puts "hell yeah"
elsif today.sunday?
    puts "good"
else
    puts "ssipal"
end

num_pallets = 0
weight      = 0
while weight < 100 and num_pallets <= 5
    pallet  = next_pallet()
    weight += pallet.wight
    num_pallets += 1
end

puts "Danger, Will Robinson" if radiation > 3000

square = 4
square = square*square while square < 1000