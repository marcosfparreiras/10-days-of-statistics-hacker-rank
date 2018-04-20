###############################
# Task
# Suppose a family has 2 children, one of which is a boy. What is the
# probability that both children are boys?
#
#
# ANSWER by calculus
#
# S = {(BB), (BG), (BG), (GG)}
# What do we want: P(both are boys | one is a boy)
# P(both are boys | one is boy) = P(both are boys AND one is boy)/P(one is boy)
#
# P(both are boys AND one is boy): one is boy removes (GG) from the sample space
# => thus, we have {(BB), (BG), (GB)}, what gives us 1/3 for the probability
#
# P(one is boy) = 1.
# => this was given in the problem ([...] one of which is a boy [...])
#
# P(both are boys | one is boy) = (1/3) / 1
# P(both are boys | one is boy) = 1/3
###############################

# ANSWER by code
options = %i[boy girl]
sample_space = options.product(options)

total_samples = 0
favorable_samples = 0

a = sample_space.select { |pair| pair.any? { |child| child == :boy } }
p a

sample_space.each do |pair|
  total_samples += 1 if pair.any? { |child| child == :boy }
  favorable_samples += 1 if pair.all? { |child| child == :boy }
end

puts "Probability: #{Rational(favorable_samples, total_samples)}"
