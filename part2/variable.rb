person = "Tim"
puts "The object in 'person' is a #{person.class}"
puts "The object has an id of #{person.object_id}"
puts "and a value of '#{person}'"

# 진짜 오브젝트는 힙 공간에 있다. 변수는 그것을 참조하고 있을 뿐(소프트 링크).

person1 = "Tim"
person2 = person1
person1[0] = 'J'

puts ="Person1 is #{person1}"
puts ="Person2 is #{person2}"

# result
# "Person1 is Jim"
# "Person2 is Jim"

# person1, person2 모두 한 객체를 참조하고 있는 링크일 뿐

person1 = "Tim"
person2 = person1.dup
person1[0] = 'J'

puts ="Person1 is #{person1}"
puts ="Person2 is #{person2}"

# result
# "Person1 is Jim"
# "Person2 is Tim"

# dup를 사용하면 같은 내용의 객체를 새로 생성한다.

person1 = "Tim"
person2 = person1.dup
person1.freeze
person1[0] = 'J'

# error
# freeze는 객체의 상태 변경을 막는다

