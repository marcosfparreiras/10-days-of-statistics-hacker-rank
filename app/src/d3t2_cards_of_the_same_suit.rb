###############################
# Task:
# You draw 2 cards from a standard 52-card deck without replacing them.
# What is the probability that both cards are of the same suit?
#
# ANSWER by calculus
#
# P = ( (4)C(1) * (13)C(2) ) / (52)C(2)
# => (4)C(1) => combination for 1 out of the 4 suits
# => (13)C(2) => combination for 2 cards out the 13 available for the suit
# => (52)C(2) => combination for 2 cards out the 52 available for the deck
#
# P = ( (4! / (1! * 3!)) * (13! / (2! / 11!)) ) / (52! / (2! * 50!))
# P = 12 / 51 = 4 / 17 (=~ 0.23529)
#
###############################

# ANSWER by code
# 1 million samples for the experiment.
# It was expected to get 4/17 (0.235) as probability
# After running the experiment, we got the 0.235, what comproves the calculus

def build_deck
  suits = %i[hearts clubs diamonds spades]
  suits.inject([]) { |deck, suit| deck + [suit] * 13 }
end

def pick_card_position(deck)
  rand(deck.size)
end

def format_number(number)
  number.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(',').reverse
end

puts 'Running experiment...'
n = 2_000_000
favorable_outcomes = 0
n.times do |i|
  puts "Experiment #{format_number(i)}" if (i % 200_000).zero?
  deck = build_deck

  first_card_position = pick_card_position(deck)
  first_suit = deck.delete_at(first_card_position)

  second_card_position = pick_card_position(deck)
  second_suit = deck.delete_at(second_card_position)

  favorable_outcomes += 1 if first_suit == second_suit
end
probability = (favorable_outcomes / n.to_f).round(3)

puts ''
puts 'Answer Report:'
puts "Number of favorable outcomes: #{favorable_outcomes}"
puts "Number of samples: #{n}"
puts "Probability as ratio: #{Rational(favorable_outcomes, n)}"
puts "Probability as number: #{probability}"
