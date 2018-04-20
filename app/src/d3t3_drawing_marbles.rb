###############################
# Task
# A bag contains 3 red marbles and 4 blue marbles. Then, 2 marbles are drawn
#   from the bag, at random, without replacement. If the first marble drawn
#   is red, what is the probability that the second marble is blue?
#
# ANSWER by calculus using conditional probability
# P(First Red AND Second Blue) = P(Second Blue | First Red) * P(First Red)
#
# P(Second Blue | First Red): given that the first is Red, then we have
#   2 Red and 4 Blue in the bag. Thus, the probability of getting a Blue one
#   is 4/6
#
# P(First Red) = 1. It was given in the problem (he first marble drawn is red)
#
# P(First Red AND Second Blue) = (2/3) * 1
# P(First Red AND Second Blue) = 2/3
###############################

# ANSWER by code
def build_bag
  [:red] * 3 + [:blue] * 4
end

def pick_marble_position(bag)
  rand(bag.size)
end

def format_number(number)
  number.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(',').reverse
end

total_outcomes = 0
favorable_outcomes = 0

n = 2_000_000
n.times do |i|
  puts "Experiment #{format_number(i)}" if (i % 200_000).zero?
  bag = build_bag

  first_marble_position = pick_marble_position(bag)
  first_color = bag.delete_at(first_marble_position)

  next unless first_color == :red
  second_marble_position = pick_marble_position(bag)
  second_color = bag.delete_at(second_marble_position)

  total_outcomes += 1
  favorable_outcomes += 1 if second_color == :blue
end

probability = (favorable_outcomes / total_outcomes.to_f).round(3)

puts ''
puts 'Answer Report:'
puts "Number of favorable outcomes: #{favorable_outcomes}"
puts "Number of samples: #{n}"
puts "Probability as ratio: #{Rational(favorable_outcomes, n)}"
puts "Probability as number: #{probability}"
