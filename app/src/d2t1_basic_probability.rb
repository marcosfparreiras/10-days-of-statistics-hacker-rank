values = (1..6).to_a
sample_space = values.product(values)
event_a = sample_space.select { |arr| arr[0] + arr[1] <= 9 }
probablity = Rational(event_a.size, sample_space.size)

puts 'Outcomes - Sample Space(S):'
puts sample_space.to_s
puts ''
puts 'Favorable Outcomes - Event(A):'
puts event_a.to_s
puts ''
puts "Probablity: #{probablity}"
