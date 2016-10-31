
a = [3.14159, 'pie', 99]
puts a.class    # => Array
puts a.length   # => 3
puts a[0]       # => 3.14159
puts a[1]       # => "pie"
puts a[2]       # => 99
puts a[3]       # => nil

b = Array.new
puts b.class    # => Array
puts b.length   # => 0
b[0] = "second"
b[1] = "array"
puts b          # => ["second", "array"]

a = [ 1, 3, 5, 7, 9 ]
puts a[-1]  # => 9
puts a[-2]  # => 7
puts a[-99] # => nil

# 인덱스를 음수로 할 경우 양수의 경우의 역순으로 위치를 계산한다

p a[1, 3]     # => [3, 5, 7]
p a[3, 1]     # => [7]
p a[-3, 2]    # => [5, 7]

# 첫 번째 값을 인덱스로 삼아 해당 위치에서 두 번째 값의 수만큼 객체 참조를 call

a[1..3]
a[1...3]
a[3..3]
a[-3..-1]

# 해당 인덱스에서..인덱스까지의 value를 반환. ...을 쓸 경우 마지막 경곗값은 표시하지 않음

a = [ 1, 3, 5, 7, 9 ]
a[1]
a = [ 1, 3, 5, 7, 9 ]
a = [ 1, 3, 5, 7, 9 ]
a = [ 1, 3, 5, 7, 9 ]