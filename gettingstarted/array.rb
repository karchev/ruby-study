a = [ 1, 'cat', 3.14]
puts "The first element is #{a[0]}"
a[2] = nil
puts "array #{a.inspect}"

a = %w{ ant bee cat dog elk }
puts "array #{a.inspect}"

inst_section = {
    'key1' => 'value1',
    'key2' => 'value2',
    'key3' => 'value3'
}

p inst_section['key1']
p inst_section['key2']
p inst_section['key3']
p inst_section['key4']

histogram = Hash.new(0);
histogram['ruby']
p histogram['ruby']
histogram['ruby'] = histogram['ruby'] + 1
p histogram['ruby']
