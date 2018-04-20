# Event A: sum is 6
# p = 5 / 36
values = (1..6).to_a
sample_space = values.product(values)

event_a = sample_space.select { |arr| arr[0] + arr[1] == 6 }
probablity_a = Rational(event_a.size, sample_space.size)
puts "Probablity that A occur (P(A)): #{probablity_a}"

# # Event b: numbers are not equal
# p = 30 / 36
# p = 5 / 6
event_b = sample_space.select { |arr| arr[0] != arr[1] }
probablity_b = Rational(event_b.size, sample_space.size)
puts "Probablity that b occur (P(B)): #{probablity_b}"

# Event A | B : sum is 6 given that numbers are not equal
event_a_given_b = event_b.select { |arr| arr[0] + arr[1] == 6 }
probablity_a_given_b = Rational(event_a_given_b.size, event_b.size)
puts "Probablity that a occur given b (P(A|B)): #{probablity_a_given_b}"

# Overall
overall_probability = Rational(probablity_a_given_b * probablity_b)
puts ''
puts "Overall probability P(A and B)"
puts "P(A and B) = P(A|B) * P(B) = #{probablity_a_given_b} * #{probablity_b}"
puts "P(A and B) = P(A|B) * P(B) = #{overall_probability}"
